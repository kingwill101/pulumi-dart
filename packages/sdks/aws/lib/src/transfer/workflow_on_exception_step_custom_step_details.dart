// ignore_for_file: unused_element, unnecessary_cast


class WorkflowOnExceptionStepCustomStepDetails {
  /// The name of the step, used as an identifier.
  final String? name;
  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final String? sourceFileLocation;
  /// The ARN for the lambda function that is being called.
  final String? target;
  /// Timeout, in seconds, for the step.
  final int? timeoutSeconds;

  /// Creates a new [WorkflowOnExceptionStepCustomStepDetails].
  /// [name] The name of the step, used as an identifier.
  /// [sourceFileLocation] Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  /// [target] The ARN for the lambda function that is being called.
  /// [timeoutSeconds] Timeout, in seconds, for the step.
  WorkflowOnExceptionStepCustomStepDetails({
    this.name,
    this.sourceFileLocation,
    this.target,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceFileLocation': ?sourceFileLocation,
      'target': ?target,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory WorkflowOnExceptionStepCustomStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepCustomStepDetails(
      name: map['name'] == null ? null : map['name'] as String,
      sourceFileLocation: map['sourceFileLocation'] == null ? null : map['sourceFileLocation'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

