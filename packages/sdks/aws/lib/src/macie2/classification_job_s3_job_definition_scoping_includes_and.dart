// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_scoping_includes_and_simple_scope_term.dart';
import 'classification_job_s3_job_definition_scoping_includes_and_tag_scope_term.dart';

class ClassificationJobS3JobDefinitionScopingIncludesAnd {
  /// A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm>? simpleScopeTerm;
  /// A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm>? tagScopeTerm;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingIncludesAnd].
  /// [simpleScopeTerm] A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  /// [tagScopeTerm] A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  ClassificationJobS3JobDefinitionScopingIncludesAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleScopeTerm': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm, Map<String, dynamic>>(simpleScopeTerm, (value) => value.toMap()),
      'tagScopeTerm': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm, Map<String, dynamic>>(tagScopeTerm, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinitionScopingIncludesAnd.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingIncludesAnd(
      simpleScopeTerm: map['simpleScopeTerm'] == null ? null : (ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm.fromMap((map['simpleScopeTerm'] as Map).cast<String, dynamic>())).input(),
      tagScopeTerm: map['tagScopeTerm'] == null ? null : (ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm.fromMap((map['tagScopeTerm'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

