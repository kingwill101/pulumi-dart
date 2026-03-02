// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_scoping_excludes.dart';
import 'classification_job_s3_job_definition_scoping_includes.dart';

class ClassificationJobS3JobDefinitionScoping {
  /// The property- or tag-based conditions that determine which objects to exclude from the analysis. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionScopingExcludes>? excludes;
  /// The property- or tag-based conditions that determine which objects to include in the analysis. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionScopingIncludes>? includes;

  /// Creates a new [ClassificationJobS3JobDefinitionScoping].
  /// [excludes] The property- or tag-based conditions that determine which objects to exclude from the analysis. (documented below)
  /// [includes] The property- or tag-based conditions that determine which objects to include in the analysis. (documented below)
  ClassificationJobS3JobDefinitionScoping({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionScopingExcludes, Map<String, dynamic>>(excludes, (value) => value.toMap()),
      'includes': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionScopingIncludes, Map<String, dynamic>>(includes, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinitionScoping.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScoping(
      excludes: map['excludes'] == null ? null : ((ClassificationJobS3JobDefinitionScopingExcludes.fromMap((map['excludes']! as Map).cast<String, dynamic>())).input()).input(),
      includes: map['includes'] == null ? null : ((ClassificationJobS3JobDefinitionScopingIncludes.fromMap((map['includes']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

