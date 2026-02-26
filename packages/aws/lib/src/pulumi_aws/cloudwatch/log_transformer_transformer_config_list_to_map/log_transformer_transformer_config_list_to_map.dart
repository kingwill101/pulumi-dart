// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigListToMap {
  /// Specifies whether the list will be flattened into single items. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? flatten;

  /// Required if <span pulumi-lang-nodejs="`flatten`" pulumi-lang-dotnet="`Flatten`" pulumi-lang-go="`flatten`" pulumi-lang-python="`flatten`" pulumi-lang-yaml="`flatten`" pulumi-lang-java="`flatten`">`flatten`</span> is set to true. Specifies the element to keep. Allowed values are <span pulumi-lang-nodejs="`first`" pulumi-lang-dotnet="`First`" pulumi-lang-go="`first`" pulumi-lang-python="`first`" pulumi-lang-yaml="`first`" pulumi-lang-java="`first`">`first`</span> and <span pulumi-lang-nodejs="`last`" pulumi-lang-dotnet="`Last`" pulumi-lang-go="`last`" pulumi-lang-python="`last`" pulumi-lang-yaml="`last`" pulumi-lang-java="`last`">`last`</span>.
  final String? flattenedElement;

  /// Specifies the key of the field to be extracted as keys in the generated map.
  final String key;

  /// Specifies the key in the log event that has a list of objects that will be converted to a map.
  final String source;

  /// Specifies the key of the field that will hold the generated map.
  final String? target;

  /// Specifies the values that will be extracted from the source objects and put into the values of the generated map. If omitted, original objects in the source list will be put into the values of the generated map.
  final String? valueKey;

  LogTransformerTransformerConfigListToMap({
    this.flatten,
    this.flattenedElement,
    required this.key,
    required this.source,
    this.target,
    this.valueKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final flattenValue = flatten;
    if (flattenValue != null) {
      map['flatten'] = flattenValue;
    }
    final flattenedElementValue = flattenedElement;
    if (flattenedElementValue != null) {
      map['flattenedElement'] = flattenedElementValue;
    }
    map['key'] = key;
    map['source'] = source;
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    final valueKeyValue = valueKey;
    if (valueKeyValue != null) {
      map['valueKey'] = valueKeyValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigListToMap.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigListToMap(
      flatten: map['flatten'] == null ? null : map['flatten'] as bool,
      flattenedElement: map['flattenedElement'] == null
          ? null
          : map['flattenedElement'] as String,
      key: map['key'] as String,
      source: map['source'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      valueKey: map['valueKey'] == null ? null : map['valueKey'] as String,
    );
  }
}
