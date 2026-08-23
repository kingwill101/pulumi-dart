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
  static IOutputCompletionSource create<T>(
    Resource resource, {
    Object? Function(Object?)? decoder,
    bool isSecret = false,
  }) {
    return _TypedOutputCompletionSource<T>(
      resource,
      decoder: decoder,
      isSecret: isSecret,
    );
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
  final Object? Function(Object?)? _decoder;
  final bool _isSecret;
  final Completer<OutputData<T>> _completer = Completer<OutputData<T>>();

  /// Creates a typed output completion source for one property.
  _TypedOutputCompletionSource(
    this._resource, {
    Object? Function(Object?)? decoder,
    bool isSecret = false,
  }) : _decoder = decoder,
       _isSecret = isSecret;

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
        // An omitted non-nullable provider output cannot represent a known
        // Dart value. This occurs for resources skipped by targeted updates.
        isKnown: isKnown && null is T,
        isSecret: _isSecret,
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
        isSecret: _isSecret,
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
    final known =
        data.isKnown && !_shouldDowngradeKnownToUnknown(data, coerced);
    _completer.complete(
      OutputData<T>(
        value: coerced,
        isKnown: known,
        isSecret: data.isSecret || _isSecret,
        resources: {...data.resources, _resource},
      ),
    );
  }

  bool _shouldDowngradeKnownToUnknown(OutputData<Object?> data, T? coerced) {
    if (!data.isKnown) {
      return false;
    }

    // If provider output data is a resource reference but the generated target
    // type cannot be hydrated and we coerce to null, keep the value unknown.
    // This preserves apply/preview semantics instead of surfacing known nulls.
    return (data.value is Resource ||
            data.value is Map ||
            data.value is List) &&
        coerced == null;
  }

  T? _coerceToTarget(Object? value) {
    if (value == null) {
      return null;
    }

    // Registration responses can reuse already-decoded input values (for
    // example provider configuration enums). Do not run wire decoders twice.
    if (value is T) {
      return value as T;
    }

    final rawTargetType = _normalizeType(T.toString());
    final targetType = _normalizeType(_stripNullableType(T.toString()));
    final isNullableTarget = rawTargetType.endsWith('?');
    if ((T == int || targetType == 'int') && value is num) {
      return value.toInt() as T;
    }
    if ((T == double || targetType == 'double') && value is num) {
      return value.toDouble() as T;
    }
    if ((T == bool || targetType == 'bool') && value is bool) {
      return value as T;
    }
    if (T == String || targetType == 'String') {
      return value.toString() as T;
    }
    if (_decoder != null) {
      try {
        final decoded = _decoder(value);
        if (decoded == null) {
          return null;
        }
        return decoded as T;
      } on TypeError {
        return null;
      } catch (_) {
        return null;
      }
    }
    if (value is Map && targetType.startsWith('Map<')) {
      return _coerceMap(value, targetType) as T;
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
      return _coerceList(value, targetType) as T;
    }

    if (value is Resource && isNullableTarget) {
      // Resource references that cannot be hydrated into the generated concrete
      // type are surfaced as null for nullable outputs instead of crashing.
      return null;
    }

    try {
      return value as T;
    } on TypeError {
      if (isNullableTarget ||
          value is Resource ||
          value is Map ||
          value is List) {
        return null;
      }
      rethrow;
    }
  }

  String _normalizeType(String type) {
    return type.replaceAll(' ', '');
  }

  String _stripNullableType(String type) {
    return type.endsWith('?') ? type.substring(0, type.length - 1) : type;
  }

  String _mapValueType(String mapType) {
    final normalized = _normalizeType(_stripNullableType(mapType));
    if (!normalized.startsWith('Map<') || !normalized.endsWith('>')) {
      return normalized;
    }

    int depth = 0;
    for (int i = 4; i < normalized.length - 1; i++) {
      final code = normalized.codeUnitAt(i);
      if (code == 60) {
        depth++;
      } else if (code == 62) {
        depth--;
      } else if (code == 44 && depth == 0) {
        return normalized.substring(i + 1, normalized.length - 1).trim();
      }
    }

    return normalized.substring(4, normalized.length - 1).trim();
  }

  String _extractTypeArg(String type) {
    final normalized = _normalizeType(_stripNullableType(type));
    final start = normalized.indexOf('<');
    if (start == -1 || !normalized.endsWith('>')) {
      return normalized;
    }
    return normalized.substring(start + 1, normalized.length - 1).trim();
  }

  dynamic _coerceList(Object? value, String type) {
    final normalizedType = _normalizeType(_stripNullableType(type));
    if (!normalizedType.startsWith('List<') || !normalizedType.endsWith('>')) {
      return value;
    }
    if (value == null || value is! List) {
      value = <Object?>[];
    }

    final elementType = _extractTypeArg(normalizedType);
    if (elementType == 'String') {
      return (value)
          .map<String>((entry) => entry.toString())
          .toList(growable: false);
    }
    if (elementType == 'int') {
      return (value)
          .map<int>((entry) => entry is num ? entry.toInt() : entry as int)
          .toList(growable: false);
    }
    if (elementType == 'double') {
      return (value)
          .map<double>(
            (entry) => entry is num ? entry.toDouble() : entry as double,
          )
          .toList(growable: false);
    }
    if (elementType == 'bool') {
      return (value)
          .map<bool>((entry) => entry as bool)
          .toList(growable: false);
    }
    if (elementType.startsWith('Map<')) {
      final mapValueType = _mapValueType(elementType);
      if (mapValueType == 'String') {
        return (value)
            .map<Map<String, String>>(
              (entry) => _coerceMap(entry, elementType) as Map<String, String>,
            )
            .toList(growable: false);
      }
      if (mapValueType == 'int') {
        return (value)
            .map<Map<String, int>>(
              (entry) => _coerceMap(entry, elementType) as Map<String, int>,
            )
            .toList(growable: false);
      }
      if (mapValueType == 'double') {
        return (value)
            .map<Map<String, double>>(
              (entry) => _coerceMap(entry, elementType) as Map<String, double>,
            )
            .toList(growable: false);
      }
      if (mapValueType == 'bool') {
        return (value)
            .map<Map<String, bool>>(
              (entry) => _coerceMap(entry, elementType) as Map<String, bool>,
            )
            .toList(growable: false);
      }
      return (value)
          .map<Map<String, dynamic>>(
            (entry) => _coerceMap(entry, elementType) as Map<String, dynamic>,
          )
          .toList(growable: false);
    }

    return (value)
        .map((entry) => _coerceValue(entry, elementType))
        .toList(growable: false);
  }

  dynamic _coerceMap(Object? value, String type) {
    final normalizedType = _normalizeType(_stripNullableType(type));
    if (!normalizedType.startsWith('Map<') || !normalizedType.endsWith('>')) {
      return <String, dynamic>{};
    }
    if (value == null || value is! Map) {
      value = <String, dynamic>{};
    }
    final mapValueType = _mapValueType(normalizedType);

    if (mapValueType == 'String') {
      return (value).map<String, String>(
        (key, entryValue) => MapEntry(
          key.toString(),
          _coerceValue(entryValue, mapValueType) as String? ?? 'null',
        ),
      );
    }
    if (mapValueType == 'int') {
      return (value).map<String, int>(
        (key, entryValue) => MapEntry(
          key.toString(),
          _coerceValue(entryValue, mapValueType) as int,
        ),
      );
    }
    if (mapValueType == 'double') {
      return (value).map<String, double>(
        (key, entryValue) => MapEntry(
          key.toString(),
          _coerceValue(entryValue, mapValueType) as double,
        ),
      );
    }
    if (mapValueType == 'bool') {
      return (value).map<String, bool>(
        (key, entryValue) => MapEntry(
          key.toString(),
          _coerceValue(entryValue, mapValueType) as bool,
        ),
      );
    }
    if (mapValueType.startsWith('List<')) {
      final listElementType = _extractTypeArg(mapValueType);
      if (mapValueType == 'List<String>') {
        return (value).map<String, List<String>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceList(entryValue, mapValueType) as List<String>,
          ),
        );
      }
      if (mapValueType == 'List<int>') {
        return (value).map<String, List<int>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceList(entryValue, mapValueType) as List<int>,
          ),
        );
      }
      if (mapValueType == 'List<double>') {
        return (value).map<String, List<double>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceList(entryValue, mapValueType) as List<double>,
          ),
        );
      }
      if (mapValueType == 'List<bool>') {
        return (value).map<String, List<bool>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceList(entryValue, mapValueType) as List<bool>,
          ),
        );
      }
      if (listElementType.startsWith('Map<')) {
        return (value).map<String, List<Map<String, dynamic>>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            (_coerceList(entryValue, mapValueType) as List)
                .cast<Map<String, dynamic>>()
                .toList(growable: false),
          ),
        );
      }
      return (value).map<String, List<dynamic>>(
        (key, entryValue) => MapEntry(
          key.toString(),
          _coerceList(entryValue, mapValueType) as List<dynamic>,
        ),
      );
    }
    if (mapValueType.startsWith('Map<')) {
      final nestedMapValueType = _mapValueType(mapValueType);
      if (nestedMapValueType == 'String') {
        return (value).map<String, Map<String, String>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceMap(entryValue, mapValueType) as Map<String, String>,
          ),
        );
      }
      if (nestedMapValueType == 'int') {
        return (value).map<String, Map<String, int>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceMap(entryValue, mapValueType) as Map<String, int>,
          ),
        );
      }
      if (nestedMapValueType == 'double') {
        return (value).map<String, Map<String, double>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceMap(entryValue, mapValueType) as Map<String, double>,
          ),
        );
      }
      if (nestedMapValueType == 'bool') {
        return (value).map<String, Map<String, bool>>(
          (key, entryValue) => MapEntry(
            key.toString(),
            _coerceMap(entryValue, mapValueType) as Map<String, bool>,
          ),
        );
      }
      return (value).map<String, Map<String, dynamic>>(
        (key, entryValue) => MapEntry(
          key.toString(),
          _coerceMap(entryValue, mapValueType) as Map<String, dynamic>,
        ),
      );
    }
    return (value).map<String, dynamic>(
      (key, entryValue) =>
          MapEntry(key.toString(), _coerceValue(entryValue, mapValueType)),
    );
  }

  dynamic _coerceValue(Object? value, String type) {
    final valueTypeWithoutQuestion = _stripNullableType(_normalizeType(type));
    if (valueTypeWithoutQuestion == 'String') {
      return value?.toString();
    }
    if (valueTypeWithoutQuestion == 'int') {
      return value is num ? value.toInt() : value as int;
    }
    if (valueTypeWithoutQuestion == 'double') {
      return value is num ? value.toDouble() : value as double;
    }
    if (valueTypeWithoutQuestion == 'bool') {
      return value as bool;
    }
    if (valueTypeWithoutQuestion == 'dynamic' ||
        valueTypeWithoutQuestion == 'Object') {
      return value;
    }
    if (valueTypeWithoutQuestion.startsWith('List<')) {
      return _coerceList(value, valueTypeWithoutQuestion);
    }
    if (valueTypeWithoutQuestion.startsWith('Map<')) {
      return _coerceMap(value, valueTypeWithoutQuestion);
    }
    return value;
  }
}
