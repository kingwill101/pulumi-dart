// ignore_for_file: unused_element, unnecessary_cast


class LogTransformerTransformerConfigListToMap {
  /// Specifies whether the list will be flattened into single items. Defaults to `false`.
  final bool? flatten;
  /// Required if `flatten` is set to true. Specifies the element to keep. Allowed values are `first` and `last`.
  final String? flattenedElement;
  /// Specifies the key of the field to be extracted as keys in the generated map.
  final String key;
  /// Specifies the key in the log event that has a list of objects that will be converted to a map.
  final String source;
  /// Specifies the key of the field that will hold the generated map.
  final String? target;
  /// Specifies the values that will be extracted from the source objects and put into the values of the generated map. If omitted, original objects in the source list will be put into the values of the generated map.
  final String? valueKey;

  /// Creates a new [LogTransformerTransformerConfigListToMap].
  /// [flatten] Specifies whether the list will be flattened into single items. Defaults to `false`.
  /// [flattenedElement] Required if `flatten` is set to true. Specifies the element to keep. Allowed values are `first` and `last`.
  /// [key] Specifies the key of the field to be extracted as keys in the generated map.
  /// [source] Specifies the key in the log event that has a list of objects that will be converted to a map.
  /// [target] Specifies the key of the field that will hold the generated map.
  /// [valueKey] Specifies the values that will be extracted from the source objects and put into the values of the generated map. If omitted, original objects in the source list will be put into the values of the generated map.
  LogTransformerTransformerConfigListToMap({
    this.flatten,
    this.flattenedElement,
    required this.key,
    required this.source,
    this.target,
    this.valueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flatten': ?flatten,
      'flattenedElement': ?flattenedElement,
      'key': key,
      'source': source,
      'target': ?target,
      'valueKey': ?valueKey,
    };
  }

  factory LogTransformerTransformerConfigListToMap.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigListToMap(
      flatten: map['flatten'] == null ? null : map['flatten'] as bool,
      flattenedElement: map['flattenedElement'] == null ? null : map['flattenedElement'] as String,
      key: map['key'] as String,
      source: map['source'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      valueKey: map['valueKey'] == null ? null : map['valueKey'] as String,
    );
  }
}

