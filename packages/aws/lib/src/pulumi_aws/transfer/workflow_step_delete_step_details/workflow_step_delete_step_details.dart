// ignore_for_file: unused_element, unnecessary_cast

class WorkflowStepDeleteStepDetails {
  /// The name of the step, used as an identifier.
  final String? name;

  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final String? sourceFileLocation;

  WorkflowStepDeleteStepDetails({
    this.name,
    this.sourceFileLocation,
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
    return map;
  }

  factory WorkflowStepDeleteStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowStepDeleteStepDetails(
      name: map['name'] == null ? null : map['name'] as String,
      sourceFileLocation: map['sourceFileLocation'] == null
          ? null
          : map['sourceFileLocation'] as String,
    );
  }
}
