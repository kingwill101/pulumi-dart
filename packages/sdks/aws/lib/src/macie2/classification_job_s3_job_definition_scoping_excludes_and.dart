// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_scoping_excludes_and_simple_scope_term.dart';
import 'classification_job_s3_job_definition_scoping_excludes_and_tag_scope_term.dart';

class ClassificationJobS3JobDefinitionScopingExcludesAnd {
  /// A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm>? simpleScopeTerm;
  /// A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm>? tagScopeTerm;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingExcludesAnd].
  /// [simpleScopeTerm] A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  /// [tagScopeTerm] A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  const ClassificationJobS3JobDefinitionScopingExcludesAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleScopeTerm': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm, Map<String, dynamic>>(simpleScopeTerm, (value) => value.toMap()),
      'tagScopeTerm': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm, Map<String, dynamic>>(tagScopeTerm, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinitionScopingExcludesAnd.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludesAnd(
      simpleScopeTerm: (() { final guardedValue = map['simpleScopeTerm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagScopeTerm: (() { final guardedValue = map['tagScopeTerm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
