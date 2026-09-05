// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowStepDeleteStepDetails {
  /// Name of the step, used as an identifier.
  final pulumi.Input<String?>? name;
  /// File to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter `${previous.file}` to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter `${original.file}` to use the originally-uploaded file location as input for this step.
  final pulumi.Input<String?>? sourceFileLocation;

  /// Creates a new [WorkflowStepDeleteStepDetails].
  /// [name] Name of the step, used as an identifier.
  /// [sourceFileLocation] File to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter `${previous.file}` to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter `${original.file}` to use the originally-uploaded file location as input for this step.
  const WorkflowStepDeleteStepDetails({
    this.name,
    this.sourceFileLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceFileLocation': ?sourceFileLocation,
    };
  }

  factory WorkflowStepDeleteStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowStepDeleteStepDetails(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFileLocation: (() { final guardedValue = map['sourceFileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
