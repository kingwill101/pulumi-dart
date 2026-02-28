// ignore_for_file: unused_element, unnecessary_cast

import 'classification_job_s3_job_definition_scoping_includes_and_simple_scope_term.dart';
import 'classification_job_s3_job_definition_scoping_includes_and_tag_scope_term.dart';

class ClassificationJobS3JobDefinitionScopingIncludesAnd {
  /// A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  final ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm?
      simpleScopeTerm;

  /// A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  final ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm?
      tagScopeTerm;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingIncludesAnd].
  /// [simpleScopeTerm] A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job. (documented below)
  /// [tagScopeTerm] A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an object from the job. (documented below)
  ClassificationJobS3JobDefinitionScopingIncludesAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final simpleScopeTermValue = simpleScopeTerm;
    if (simpleScopeTermValue != null) {
      map['simpleScopeTerm'] = simpleScopeTermValue.toMap();
    }
    final tagScopeTermValue = tagScopeTerm;
    if (tagScopeTermValue != null) {
      map['tagScopeTerm'] = tagScopeTermValue.toMap();
    }
    return map;
  }

  factory ClassificationJobS3JobDefinitionScopingIncludesAnd.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingIncludesAnd(
      simpleScopeTerm: map['simpleScopeTerm'] == null
          ? null
          : ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm
              .fromMap((map['simpleScopeTerm'] as Map).cast<String, dynamic>()),
      tagScopeTerm: map['tagScopeTerm'] == null
          ? null
          : ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm
              .fromMap((map['tagScopeTerm'] as Map).cast<String, dynamic>()),
    );
  }
}
