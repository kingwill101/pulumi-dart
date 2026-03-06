// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_scoping_includes_and_tag_scope_term_tag_value.dart';

class ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm {
  /// The operator to use in the condition.
  final pulumi.Input<String>? comparator;
  /// The tag key to use in the condition. The only valid value is `TAG`.
  final pulumi.Input<String>? key;
  /// The tag keys or tag key and value pairs to use in the condition.
  final pulumi.Input<List<ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue>>? tagValues;
  /// The type of object to apply the condition to. The only valid value is `S3_OBJECT`.
  final pulumi.Input<String>? target;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm].
  /// [comparator] The operator to use in the condition.
  /// [key] The tag key to use in the condition. The only valid value is `TAG`.
  /// [tagValues] The tag keys or tag key and value pairs to use in the condition.
  /// [target] The type of object to apply the condition to. The only valid value is `S3_OBJECT`.
  const ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm({
    this.comparator,
    this.key,
    this.tagValues,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator,
      'key': ?key,
      'tagValues': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue>, List<Map<String, dynamic>>>(tagValues, (value) => pulumi.Input.encodeList<ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'target': ?target,
    };
  }

  factory ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm(
      comparator: (() { final guardedValue = map['comparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValues: (() { final guardedValue = map['tagValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue>(guardedValue, (value) => ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

