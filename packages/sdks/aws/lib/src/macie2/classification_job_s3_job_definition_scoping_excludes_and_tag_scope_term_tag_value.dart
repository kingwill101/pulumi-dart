// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue {
  /// The tag key.
  final pulumi.Input<String>? key;
  /// The tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue].
  /// [key] The tag key.
  /// [value] The tag value.
  ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

