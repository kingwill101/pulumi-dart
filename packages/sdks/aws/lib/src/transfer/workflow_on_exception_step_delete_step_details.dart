// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowOnExceptionStepDeleteStepDetails {
  /// The name of the step, used as an identifier.
  final pulumi.Input<String>? name;
  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final pulumi.Input<String>? sourceFileLocation;

  /// Creates a new [WorkflowOnExceptionStepDeleteStepDetails].
  /// [name] The name of the step, used as an identifier.
  /// [sourceFileLocation] Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  WorkflowOnExceptionStepDeleteStepDetails({
    this.name,
    this.sourceFileLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceFileLocation': ?sourceFileLocation,
    };
  }

  factory WorkflowOnExceptionStepDeleteStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepDeleteStepDetails(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sourceFileLocation: map['sourceFileLocation'] == null ? null : (map['sourceFileLocation'] as String).input(),
    );
  }
}

