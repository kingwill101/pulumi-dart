// ignore_for_file: unused_element, unnecessary_cast

import 'classification_job_s3_job_definition_scoping_excludes.dart';
import 'classification_job_s3_job_definition_scoping_includes.dart';

class ClassificationJobS3JobDefinitionScoping {
  /// The property- or tag-based conditions that determine which objects to exclude from the analysis. (documented below)
  final ClassificationJobS3JobDefinitionScopingExcludes? excludes;

  /// The property- or tag-based conditions that determine which objects to include in the analysis. (documented below)
  final ClassificationJobS3JobDefinitionScopingIncludes? includes;

  /// Creates a new [ClassificationJobS3JobDefinitionScoping].
  /// [excludes] The property- or tag-based conditions that determine which objects to exclude from the analysis. (documented below)
  /// [includes] The property- or tag-based conditions that determine which objects to include in the analysis. (documented below)
  ClassificationJobS3JobDefinitionScoping({this.excludes, this.includes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes == null ? null : excludes!.toMap(),
      'includes': ?includes == null ? null : includes!.toMap(),
    };
  }

  factory ClassificationJobS3JobDefinitionScoping.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClassificationJobS3JobDefinitionScoping(
      excludes: map['excludes'] == null
          ? null
          : ClassificationJobS3JobDefinitionScopingExcludes.fromMap(
              (map['excludes'] as Map).cast<String, dynamic>(),
            ),
      includes: map['includes'] == null
          ? null
          : ClassificationJobS3JobDefinitionScopingIncludes.fromMap(
              (map['includes'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
