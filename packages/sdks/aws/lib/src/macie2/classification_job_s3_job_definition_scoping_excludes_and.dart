// ignore_for_file: unused_element, unnecessary_cast

import 'classification_job_s3_job_definition_scoping_excludes_and_simple_scope_term.dart';
import 'classification_job_s3_job_definition_scoping_excludes_and_tag_scope_term.dart';

class ClassificationJobS3JobDefinitionScopingExcludesAnd {
  /// A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  final ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm? simpleScopeTerm;
  /// A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  final ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm? tagScopeTerm;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingExcludesAnd].
  /// [simpleScopeTerm] A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  /// [tagScopeTerm] A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  ClassificationJobS3JobDefinitionScopingExcludesAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleScopeTerm': ?simpleScopeTerm == null ? null : simpleScopeTerm!.toMap(),
      'tagScopeTerm': ?tagScopeTerm == null ? null : tagScopeTerm!.toMap(),
    };
  }

  factory ClassificationJobS3JobDefinitionScopingExcludesAnd.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludesAnd(
      simpleScopeTerm: map['simpleScopeTerm'] == null ? null : ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm.fromMap((map['simpleScopeTerm'] as Map).cast<String, dynamic>()),
      tagScopeTerm: map['tagScopeTerm'] == null ? null : ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm.fromMap((map['tagScopeTerm'] as Map).cast<String, dynamic>()),
    );
  }
}

