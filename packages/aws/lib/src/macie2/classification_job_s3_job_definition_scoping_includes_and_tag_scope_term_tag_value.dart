// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue {
  /// The tag key.
  final String? key;

  /// The tag value.
  final String? value;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue].
  /// [key] The tag key.
  /// [value] The tag value.
  ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
