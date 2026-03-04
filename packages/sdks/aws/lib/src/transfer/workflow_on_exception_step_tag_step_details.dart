// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step_tag_step_details_tag.dart';

class WorkflowOnExceptionStepTagStepDetails {
  /// The name of the step, used as an identifier.
  final pulumi.Input<String>? name;

  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final pulumi.Input<String>? sourceFileLocation;

  /// Array that contains from 1 to 10 key/value pairs. See S3 Tags below.
  final pulumi.Input<List<WorkflowOnExceptionStepTagStepDetailsTag>>? tags;

  /// Creates a new [WorkflowOnExceptionStepTagStepDetails].
  /// [name] The name of the step, used as an identifier.
  /// [sourceFileLocation] Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  /// [tags] Array that contains from 1 to 10 key/value pairs. See S3 Tags below.
  WorkflowOnExceptionStepTagStepDetails({
    this.name,
    this.sourceFileLocation,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceFileLocation': ?sourceFileLocation,
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkflowOnExceptionStepTagStepDetailsTag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) =>
                pulumi.Input.encodeList<
                  WorkflowOnExceptionStepTagStepDetailsTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WorkflowOnExceptionStepTagStepDetails.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowOnExceptionStepTagStepDetails(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceFileLocation: (() {
        final guardedValue = map['sourceFileLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkflowOnExceptionStepTagStepDetailsTag>(
            guardedValue,
            (value) => WorkflowOnExceptionStepTagStepDetailsTag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
