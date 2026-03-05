// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step_copy_step_details_destination_file_location.dart';

class WorkflowOnExceptionStepCopyStepDetails {
  /// Specifies the location for the file being copied. Use ${Transfer:username} in this field to parametrize the destination prefix by username.
  final pulumi.Input<WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation>? destinationFileLocation;
  /// The name of the step, used as an identifier.
  final pulumi.Input<String>? name;
  /// A flag that indicates whether or not to overwrite an existing file of the same name. The default is `FALSE`. Valid values are `TRUE` and `FALSE`.
  final pulumi.Input<String>? overwriteExisting;
  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final pulumi.Input<String>? sourceFileLocation;

  /// Creates a new [WorkflowOnExceptionStepCopyStepDetails].
  /// [destinationFileLocation] Specifies the location for the file being copied. Use ${Transfer:username} in this field to parametrize the destination prefix by username.
  /// [name] The name of the step, used as an identifier.
  /// [overwriteExisting] A flag that indicates whether or not to overwrite an existing file of the same name. The default is `FALSE`. Valid values are `TRUE` and `FALSE`.
  /// [sourceFileLocation] Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  WorkflowOnExceptionStepCopyStepDetails({
    this.destinationFileLocation,
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation, Map<String, dynamic>>(destinationFileLocation, (value) => value.toMap()),
      'name': ?name,
      'overwriteExisting': ?overwriteExisting,
      'sourceFileLocation': ?sourceFileLocation,
    };
  }

  factory WorkflowOnExceptionStepCopyStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepCopyStepDetails(
      destinationFileLocation: (() { final guardedValue = map['destinationFileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overwriteExisting: (() { final guardedValue = map['overwriteExisting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFileLocation: (() { final guardedValue = map['sourceFileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

