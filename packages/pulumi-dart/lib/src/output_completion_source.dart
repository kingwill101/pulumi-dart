import 'output.dart';
import 'resource/resource.dart';
import 'dart:async';

/// {@template pulumi.output_completion_source.summary}
/// Contract for dynamically completing resource output properties.
///
/// Resource instances register output properties before monitor responses are
/// available. Completion sources bridge that gap.
/// {@endtemplate}
///
abstract class IOutputCompletionSource {
  /// Target Dart type for this output property.
  Type get targetType;

  /// Output instance completed by this source.
  Output get output;

  /// Completes with an exception when output resolution fails.
  void trySetException(Exception exception);

  /// Completes with a default value (`null`) and known/unknown state.
  void trySetDefaultResult(bool isKnown);

  /// Completes from a string payload, coercing to target type when possible.
  void setStringValue(String value, bool isKnown);

  /// Completes from already-deserialized [OutputData].
  void setValue(OutputData<Object?> data);
}

/// Factory helpers for [IOutputCompletionSource] instances.
class OutputCompletionSource {
  /// Creates a typed completion source for a resource output property.
  static IOutputCompletionSource create<T>(Resource resource) {
    return _TypedOutputCompletionSource<T>(resource);
  }

  /// Initializes predeclared outputs for [resource].
  ///
  /// Current implementation returns an empty map; outputs are dynamically
  /// registered by resource constructors.
  static Map<String, IOutputCompletionSource> initializeOutputs(
    Resource resource,
  ) {
    return <String, IOutputCompletionSource>{};
  }
}

/// Typed completion source implementation for one output property.
class _TypedOutputCompletionSource<T> implements IOutputCompletionSource {
  final Resource _resource;
  final Completer<OutputData<T>> _completer = Completer<OutputData<T>>();

  /// Creates a typed output completion source for one property.
  _TypedOutputCompletionSource(this._resource);

  /// Target type represented by `T`.
  @override
  Type get targetType => T;

  /// Output completed by this source.
  @override
  Output<T> get output => Output<T>(_completer.future);

  @override
  void trySetException(Exception exception) {
    if (_completer.isCompleted) {
      return;
    }
    _completer.completeError(exception);
  }

  @override
  void trySetDefaultResult(bool isKnown) {
    if (_completer.isCompleted) {
      return;
    }
    _completer.complete(
      OutputData<T>(
        value: null,
        isKnown: isKnown,
        isSecret: false,
        resources: {_resource},
      ),
    );
  }

  @override
  void setStringValue(String value, bool isKnown) {
    if (_completer.isCompleted) {
      return;
    }
    if (!isKnown) {
      trySetDefaultResult(false);
      return;
    }

    final coerced = _coerceToTarget(value);
    _completer.complete(
      OutputData<T>(
        value: coerced,
        isKnown: true,
        isSecret: false,
        resources: {_resource},
      ),
    );
  }

  @override
  void setValue(OutputData<Object?> data) {
    if (_completer.isCompleted) {
      return;
    }
    final coerced = _coerceToTarget(data.value);
    _completer.complete(
      OutputData<T>(
        value: coerced,
        isKnown: data.isKnown,
        isSecret: data.isSecret,
        resources: {...data.resources, _resource},
      ),
    );
  }

  T? _coerceToTarget(Object? value) {
    if (value == null) {
      return null;
    }

    final targetType = T.toString();
    if ((T == int || targetType == 'int?') && value is num) {
      return value.toInt() as T;
    }
    if ((T == double || targetType == 'double?') && value is num) {
      return value.toDouble() as T;
    }
    if ((T == bool || targetType == 'bool?') && value is bool) {
      return value as T;
    }
    if (T == String || targetType == 'String?') {
      return value.toString() as T;
    }
    if (value is Map && targetType.startsWith('Map<')) {
      return value.cast<String, dynamic>() as T;
    }
    if (value is List && targetType.startsWith('List<')) {
      if (targetType.startsWith('List<String')) {
        return value
                .map<String>((entry) => entry.toString())
                .toList(growable: false)
            as T;
      }
      if (targetType.startsWith('List<int')) {
        return value
                .map<int>(
                  (entry) => entry is num ? entry.toInt() : entry as int,
                )
                .toList(growable: false)
            as T;
      }
      if (targetType.startsWith('List<double')) {
        return value
                .map<double>(
                  (entry) => entry is num ? entry.toDouble() : entry as double,
                )
                .toList(growable: false)
            as T;
      }
      if (targetType.startsWith('List<bool')) {
        return value.map<bool>((entry) => entry as bool).toList(growable: false)
            as T;
      }
      return List<Object?>.from(value) as T;
    }

    return value as T;
  }
}
