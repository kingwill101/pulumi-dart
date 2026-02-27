// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../classification_job_s3_job_definition_scoping_excludes_and/classification_job_s3_job_definition_scoping_excludes_and.dart';

class ClassificationJobS3JobDefinitionScopingExcludes {
  /// An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)
  final List<ClassificationJobS3JobDefinitionScopingExcludesAnd>? ands;

  ClassificationJobS3JobDefinitionScopingExcludes({
    this.ands,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andsValue = ands;
    if (andsValue != null) {
      map['ands'] = pulumi.Input.encodeList<
          ClassificationJobS3JobDefinitionScopingExcludesAnd,
          Map<String, dynamic>>(andsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClassificationJobS3JobDefinitionScopingExcludes.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludes(
      ands: map['ands'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClassificationJobS3JobDefinitionScopingExcludesAnd>(
              map['ands'],
              (value) =>
                  ClassificationJobS3JobDefinitionScopingExcludesAnd.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
