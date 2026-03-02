// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step_decrypt_step_details_destination_file_location.dart';

class WorkflowOnExceptionStepDecryptStepDetails {
  /// Specifies the location for the file being copied. Use ${Transfer:username} in this field to parametrize the destination prefix by username.
  final pulumi.Input<WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation>? destinationFileLocation;
  /// The name of the step, used as an identifier.
  final pulumi.Input<String>? name;
  /// A flag that indicates whether or not to overwrite an existing file of the same name. The default is `FALSE`. Valid values are `TRUE` and `FALSE`.
  final pulumi.Input<String>? overwriteExisting;
  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final pulumi.Input<String>? sourceFileLocation;
  /// The type of encryption used. Currently, this value must be `"PGP"`.
  final pulumi.Input<String> type;

  /// Creates a new [WorkflowOnExceptionStepDecryptStepDetails].
  /// [destinationFileLocation] Specifies the location for the file being copied. Use ${Transfer:username} in this field to parametrize the destination prefix by username.
  /// [name] The name of the step, used as an identifier.
  /// [overwriteExisting] A flag that indicates whether or not to overwrite an existing file of the same name. The default is `FALSE`. Valid values are `TRUE` and `FALSE`.
  /// [sourceFileLocation] Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  /// [type] The type of encryption used. Currently, this value must be `"PGP"`.
  WorkflowOnExceptionStepDecryptStepDetails({
    this.destinationFileLocation,
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation, Map<String, dynamic>>(destinationFileLocation, (value) => value.toMap()),
      'name': ?name,
      'overwriteExisting': ?overwriteExisting,
      'sourceFileLocation': ?sourceFileLocation,
      'type': type,
    };
  }

  factory WorkflowOnExceptionStepDecryptStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepDecryptStepDetails(
      destinationFileLocation: map['destinationFileLocation'] == null ? null : (WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation.fromMap((map['destinationFileLocation'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      overwriteExisting: map['overwriteExisting'] == null ? null : (map['overwriteExisting'] as String).input(),
      sourceFileLocation: map['sourceFileLocation'] == null ? null : (map['sourceFileLocation'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

