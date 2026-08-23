// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_step_tag_step_details_tag.dart';

class WorkflowStepTagStepDetails {
  /// Name of the step, used as an identifier.
  final pulumi.Input<String>? name;
  /// File to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter `${previous.file}` to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter `${original.file}` to use the originally-uploaded file location as input for this step.
  final pulumi.Input<String>? sourceFileLocation;
  /// Array that contains from 1 to 10 key/value pairs. See `tags` Block below.
  final pulumi.Input<List<WorkflowStepTagStepDetailsTag>>? tags;

  /// Creates a new [WorkflowStepTagStepDetails].
  /// [name] Name of the step, used as an identifier.
  /// [sourceFileLocation] File to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter `${previous.file}` to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter `${original.file}` to use the originally-uploaded file location as input for this step.
  /// [tags] Array that contains from 1 to 10 key/value pairs. See `tags` Block below.
  const WorkflowStepTagStepDetails({
    this.name,
    this.sourceFileLocation,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceFileLocation': ?sourceFileLocation,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<WorkflowStepTagStepDetailsTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<WorkflowStepTagStepDetailsTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkflowStepTagStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowStepTagStepDetails(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFileLocation: (() { final guardedValue = map['sourceFileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowStepTagStepDetailsTag>(guardedValue, (value) => WorkflowStepTagStepDetailsTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
