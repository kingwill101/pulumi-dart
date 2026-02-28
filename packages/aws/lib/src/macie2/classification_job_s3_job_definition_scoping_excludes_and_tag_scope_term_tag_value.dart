// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue {
  /// The tag key.
  final String? key;

  /// The tag value.
  final String? value;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue].
  /// [key] The tag key.
  /// [value] The tag value.
  ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
