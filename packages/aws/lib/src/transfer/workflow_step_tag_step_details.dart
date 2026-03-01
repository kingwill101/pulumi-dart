// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_step_tag_step_details_tag.dart';

class WorkflowStepTagStepDetails {
  /// The name of the step, used as an identifier.
  final String? name;
  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final String? sourceFileLocation;
  /// Array that contains from 1 to 10 key/value pairs. See S3 Tags below.
  final List<WorkflowStepTagStepDetailsTag>? tags;

  /// Creates a new [WorkflowStepTagStepDetails].
  /// [name] The name of the step, used as an identifier.
  /// [sourceFileLocation] Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  /// [tags] Array that contains from 1 to 10 key/value pairs. See S3 Tags below.
  WorkflowStepTagStepDetails({
    this.name,
    this.sourceFileLocation,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceFileLocation': ?sourceFileLocation,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<WorkflowStepTagStepDetailsTag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory WorkflowStepTagStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowStepTagStepDetails(
      name: map['name'] == null ? null : map['name'] as String,
      sourceFileLocation: map['sourceFileLocation'] == null ? null : map['sourceFileLocation'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<WorkflowStepTagStepDetailsTag>(map['tags'], (value) => WorkflowStepTagStepDetailsTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

