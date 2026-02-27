// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workflow_on_exception_step_tag_step_details_tag/workflow_on_exception_step_tag_step_details_tag.dart';

class WorkflowOnExceptionStepTagStepDetails {
  /// The name of the step, used as an identifier.
  final String? name;

  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final String? sourceFileLocation;

  /// Array that contains from 1 to 10 key/value pairs. See S3 Tags below.
  final List<WorkflowOnExceptionStepTagStepDetailsTag>? tags;

  WorkflowOnExceptionStepTagStepDetails({
    this.name,
    this.sourceFileLocation,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final sourceFileLocationValue = sourceFileLocation;
    if (sourceFileLocationValue != null) {
      map['sourceFileLocation'] = sourceFileLocationValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = pulumi.Input.encodeList<
          WorkflowOnExceptionStepTagStepDetailsTag,
          Map<String, dynamic>>(tagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkflowOnExceptionStepTagStepDetails.fromMap(
      Map<String, dynamic> map) {
    return WorkflowOnExceptionStepTagStepDetails(
      name: map['name'] == null ? null : map['name'] as String,
      sourceFileLocation: map['sourceFileLocation'] == null
          ? null
          : map['sourceFileLocation'] as String,
      tags: map['tags'] == null
          ? null
          : pulumi.Input.decodeList<WorkflowOnExceptionStepTagStepDetailsTag>(
              map['tags'],
              (value) => WorkflowOnExceptionStepTagStepDetailsTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
