// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_scoping_excludes_and_tag_scope_term_tag_value.dart';

class ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm {
  /// Operator to use in the condition.
  final pulumi.Input<String?>? comparator;
  /// Tag key to use in the condition. The only valid value is `TAG`.
  final pulumi.Input<String?>? key;
  /// Tag keys or tag key and value pairs to use in the condition. See `s3_job_definition.scoping.includes.and.tag_scope_term.tag_values` Block for details.
  final pulumi.Input<List<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue>?>? tagValues;
  /// Type of object to apply the condition to. The only valid value is `S3_OBJECT`. The AWS API requires this argument when `tagScopeTerm` is used.
  final pulumi.Input<String?>? target;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm].
  /// [comparator] Operator to use in the condition.
  /// [key] Tag key to use in the condition. The only valid value is `TAG`.
  /// [tagValues] Tag keys or tag key and value pairs to use in the condition. See `s3_job_definition.scoping.includes.and.tag_scope_term.tag_values` Block for details.
  /// [target] Type of object to apply the condition to. The only valid value is `S3_OBJECT`. The AWS API requires this argument when `tagScopeTerm` is used.
  const ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm({
    this.comparator,
    this.key,
    this.tagValues,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator,
      'key': ?key,
      'tagValues': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue>, List<Map<String, dynamic>>>(tagValues, (value) => pulumi.Input.encodeList<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'target': ?target,
    };
  }

  factory ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm(
      comparator: (() { final guardedValue = map['comparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValues: (() { final guardedValue = map['tagValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue>(guardedValue, (value) => ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
