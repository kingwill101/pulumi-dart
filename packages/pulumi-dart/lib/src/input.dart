import 'output.dart';

Input<T>? _normalizeInputValue<T>(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is Input<T>) {
    return value;
  }
  if (value is Input) {
    return Input.fromOutput(value.toOutput().apply<T>((v) => v as T));
  }
  if (value is Output) {
    return Input.fromOutput(value.apply<T>((v) => v as T));
  }
  if (value is T) {
    return Input.fromValue(value as T);
  }
  throw ArgumentError.value(value, 'value', 'Expected Input<$T> or $T');
}

/// A map of serialized resource arguments keyed by Pulumi property name.
typedef Inputs = Map<String, Input<dynamic>>;

/// {@template pulumi.input.summary}
/// Represents a Pulumi resource/function input.
///
/// Inputs can be provided as plain values or as [Output] values derived from
/// other resources. This preserves dependency information through the graph so
/// the engine can plan operations correctly.
///
/// In application code, most generated resource arguments are declared as
/// `Input<T>` or nullable `Input<T>?`. This lets callers provide either:
/// - plain Dart values such as `String`, `int`, `bool`, `Map`, and `List`
/// - computed [Output] values from other resources
/// - values already wrapped with [Input.fromValue] or [Input.fromOutput]
///
/// Use [Input] when you are describing desired infrastructure state. Use
/// [Output] when you are consuming values produced by the engine.
///
/// ## Example
/// ```dart
/// final plain = Input.fromValue('prod');
/// final computed = Output.create('api').apply((v) => '$v.internal');
/// final mixed = <String, Input<dynamic>>{
///   'environment': plain,
///   'hostname': Input.fromOutput(computed),
/// };
/// ```
/// {@endtemplate}
///
abstract class Input<T> {
  /// Converts this input to an [Output].
  ///
  /// This is the normalization boundary between "accept either plain values or
  /// outputs" and "work with resolved output semantics".
  Output<T> toOutput();

  /// Wraps an existing [Output] as an [Input].
  factory Input.fromOutput(Output<T> output) {
    return _OutputInput(output);
  }

  /// Wraps a plain value as an [Input].
  factory Input.fromValue(T value) {
    return _ValueInput(value);
  }

  /// Normalizes a value into an [Input].
  ///
  /// If [value] is already an [Input], it is returned unchanged. Otherwise it
  /// is wrapped as a plain-value input.
  ///
  /// ## Example
  /// ```dart
  /// Input<String> ensureInput(Object v) => Input.asInput<String>(v);
  /// ```
  static Input<T> asInput<T>(Object? value) {
    return _normalizeInputValue<T>(value)!;
  }

  /// Convenience alias for [asInput].
  static Input<T> input<T>(Object? value) => asInput<T>(value);

  /// Converts [value] to an [Input] and then to an [Output].
  ///
  /// This is a convenience for APIs that want output semantics immediately.
  static Output<T> output<T>(Object? value) => asInput<T>(value).toOutput();

  /// Like [asInput], but returns `null` when [value] is `null`.
  ///
  /// Useful for optional resource arguments.
  static Input<T>? asOptionalInput<T>(Object? value) {
    try {
      return _normalizeInputValue<T>(value);
    } on ArgumentError {
      throw ArgumentError.value(
        value,
        'value',
        'Expected Input<$T>, $T, or null',
      );
    }
  }

  /// Maps the eventual value inside an [Input] while preserving dependencies.
  ///
  /// ## Example
  /// ```dart
  /// final port = Input.fromValue(443);
  /// final label = Input.mapInputValue<int, String>(port, (p) => 'https-$p');
  /// ```
  static Input<U> mapInputValue<T, U>(
    Input<T> input,
    U Function(T value) mapper,
  ) {
    return Input.fromOutput(input.toOutput().apply((value) => mapper(value)));
  }

  /// Optional version of [mapInputValue].
  static Input<U>? mapOptionalInputValue<T, U>(
    Input<T>? input,
    U Function(T value) mapper,
  ) {
    if (input == null) {
      return null;
    }
    return mapInputValue<T, U>(input, mapper);
  }

  /// Decodes a list payload using [decoder] for each element.
  static List<T> decodeList<T>(
    dynamic value,
    T Function(dynamic value) decoder,
  ) {
    return (value as List).map((item) => decoder(item)).toList(growable: false);
  }

  /// Decodes a string-keyed map payload using [decoder] for each value.
  static Map<String, T> decodeMapValues<T>(
    dynamic value,
    T Function(dynamic value) decoder,
  ) {
    final map = (value as Map).cast<String, dynamic>();
    return map.map((key, item) => MapEntry(key, decoder(item)));
  }

  /// Encodes a strongly typed list using [encoder] for each element.
  static List<U> encodeList<T, U>(List<T> value, U Function(T value) encoder) {
    return value.map((item) => encoder(item)).toList(growable: false);
  }

  /// Encodes a strongly typed map using [encoder] for each value.
  static Map<String, U> encodeMapValues<T, U>(
    Map<String, T> value,
    U Function(T value) encoder,
  ) {
    return value.map((key, item) => MapEntry(key, encoder(item)));
  }

  /// Converts a plain argument map into [Inputs].
  ///
  /// Existing [Input] values are preserved, and all other values are wrapped
  /// with [Input.fromValue].
  ///
  /// ## Example
  /// ```dart
  /// final args = Input.mapToInputs({
  ///   'name': 'app',
  ///   'replicas': Input.fromValue(3),
  /// });
  /// ```
  static Inputs mapToInputs(Map<String, dynamic> args) {
    final mapped = <String, Input<dynamic>>{};
    for (final entry in args.entries) {
      final value = entry.value;
      if (value is Input<dynamic>) {
        mapped[entry.key] = value;
      } else {
        mapped[entry.key] = Input.fromValue(value);
      }
    }
    return mapped;
  }
}

class _OutputInput<T> implements Input<T> {
  final Output<T> _output;

  _OutputInput(this._output);

  @override
  Output<T> toOutput() => _output;
}

class _ValueInput<T> implements Input<T> {
  final T _value;

  _ValueInput(this._value);

  @override
  Output<T> toOutput() => Output.create(_value);
}

/// Ergonomic value/output conversions for Pulumi program code.
extension PulumiInputOutputExtensions<T> on T {
  /// Converts this value into a Pulumi [Input].
  ///
  /// Example:
  /// ```dart
  /// final replicas = 3.input();
  /// ```
  Input<T> input() => Input.asInput(this);

  /// Converts this value into a Pulumi [Output].
  Output<T> output() => Input.asInput<T>(this).toOutput();
}

extension PulumiInputExtensions<T> on Input<T> {
  /// Returns this value unchanged for inputs to keep `.input()` idempotent.
  Input<T> input() => this;

  /// Converts this input to an [Output], preserving any existing dependencies.
  Output<T> output() => toOutput();
}

/// Makes `.input()`/`.output()` chain-friendly on already-computed outputs.
extension PulumiOutputExtensions<T> on Output<T> {
  /// Converts this [Output] into an [Input].
  Input<T> input() => Input.fromOutput(this);

  /// Returns this output unchanged.
  Output<T> output() => this;
}
