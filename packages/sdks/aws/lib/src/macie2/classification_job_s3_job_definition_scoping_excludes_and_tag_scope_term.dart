// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_scoping_excludes_and_tag_scope_term_tag_value.dart';

class ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm {
  /// The operator to use in the condition.
  final String? comparator;
  /// The tag key to use in the condition. The only valid value is `TAG`.
  final String? key;
  /// The tag keys or tag key and value pairs to use in the condition.
  final List<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue>? tagValues;
  /// The type of object to apply the condition to. The only valid value is `S3_OBJECT`.
  final String? target;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm].
  /// [comparator] The operator to use in the condition.
  /// [key] The tag key to use in the condition. The only valid value is `TAG`.
  /// [tagValues] The tag keys or tag key and value pairs to use in the condition.
  /// [target] The type of object to apply the condition to. The only valid value is `S3_OBJECT`.
  ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm({
    this.comparator,
    this.key,
    this.tagValues,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator,
      'key': ?key,
      'tagValues': ?tagValues == null ? null : pulumi.Input.encodeList<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue, Map<String, dynamic>>(tagValues!, (value) => value.toMap()),
      'target': ?target,
    };
  }

  factory ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm(
      comparator: map['comparator'] == null ? null : map['comparator'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      tagValues: map['tagValues'] == null ? null : pulumi.Input.decodeList<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue>(map['tagValues'], (value) => ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue.fromMap((value as Map).cast<String, dynamic>())),
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

