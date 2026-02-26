// ignore_for_file: unused_element, unnecessary_cast

import '../workflow_on_exception_step_copy_step_details_destination_file_location/workflow_on_exception_step_copy_step_details_destination_file_location.dart';

class WorkflowOnExceptionStepCopyStepDetails {
  /// Specifies the location for the file being copied. Use ${Transfer:username} in this field to parametrize the destination prefix by username.
  final WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation?
      destinationFileLocation;

  /// The name of the step, used as an identifier.
  final String? name;

  /// A flag that indicates whether or not to overwrite an existing file of the same name. The default is `FALSE`. Valid values are `TRUE` and `FALSE`.
  final String? overwriteExisting;

  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final String? sourceFileLocation;

  WorkflowOnExceptionStepCopyStepDetails({
    this.destinationFileLocation,
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationFileLocationValue = destinationFileLocation;
    if (destinationFileLocationValue != null) {
      map['destinationFileLocation'] = destinationFileLocationValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final overwriteExistingValue = overwriteExisting;
    if (overwriteExistingValue != null) {
      map['overwriteExisting'] = overwriteExistingValue;
    }
    final sourceFileLocationValue = sourceFileLocation;
    if (sourceFileLocationValue != null) {
      map['sourceFileLocation'] = sourceFileLocationValue;
    }
    return map;
  }

  factory WorkflowOnExceptionStepCopyStepDetails.fromMap(
      Map<String, dynamic> map) {
    return WorkflowOnExceptionStepCopyStepDetails(
      destinationFileLocation: map['destinationFileLocation'] == null
          ? null
          : WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation
              .fromMap((map['destinationFileLocation'] as Map)
                  .cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      overwriteExisting: map['overwriteExisting'] == null
          ? null
          : map['overwriteExisting'] as String,
      sourceFileLocation: map['sourceFileLocation'] == null
          ? null
          : map['sourceFileLocation'] as String,
    );
  }
}
