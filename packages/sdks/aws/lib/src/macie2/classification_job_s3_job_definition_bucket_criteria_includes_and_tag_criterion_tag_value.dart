// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue {
  /// The tag key.
  final pulumi.Input<String>? key;
  /// The tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue].
  /// [key] The tag key.
  /// [value] The tag value.
  ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue(
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

