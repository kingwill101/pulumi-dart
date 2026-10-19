// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_scoping_includes_and.dart';

class ClassificationJobS3JobDefinitionScopingIncludes {
  /// Array of conditions, one for each condition that determines which objects to include or exclude from the job. See `scoping.includes.and` Block for details.
  final pulumi.Input<List<ClassificationJobS3JobDefinitionScopingIncludesAnd>?>? ands;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingIncludes].
  /// [ands] Array of conditions, one for each condition that determines which objects to include or exclude from the job. See `scoping.includes.and` Block for details.
  const ClassificationJobS3JobDefinitionScopingIncludes({
    this.ands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobS3JobDefinitionScopingIncludesAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<ClassificationJobS3JobDefinitionScopingIncludesAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClassificationJobS3JobDefinitionScopingIncludes.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingIncludes(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClassificationJobS3JobDefinitionScopingIncludesAnd>(guardedValue, (value) => ClassificationJobS3JobDefinitionScopingIncludesAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
