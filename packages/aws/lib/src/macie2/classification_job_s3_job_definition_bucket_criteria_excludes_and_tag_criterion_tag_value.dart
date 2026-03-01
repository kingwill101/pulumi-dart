// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue {
  /// The tag key.
  final String? key;

  /// The tag value.
  final String? value;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue].
  /// [key] The tag key.
  /// [value] The tag value.
  ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
