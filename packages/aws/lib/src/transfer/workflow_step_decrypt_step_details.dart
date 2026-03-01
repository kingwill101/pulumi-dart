// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_step_decrypt_step_details_destination_file_location.dart';

class WorkflowStepDecryptStepDetails {
  /// Specifies the location for the file being copied. Use ${Transfer:username} in this field to parametrize the destination prefix by username.
  final WorkflowStepDecryptStepDetailsDestinationFileLocation? destinationFileLocation;
  /// The name of the step, used as an identifier.
  final String? name;
  /// A flag that indicates whether or not to overwrite an existing file of the same name. The default is `FALSE`. Valid values are `TRUE` and `FALSE`.
  final String? overwriteExisting;
  /// Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  final String? sourceFileLocation;
  /// The type of encryption used. Currently, this value must be `"PGP"`.
  final String type;

  /// Creates a new [WorkflowStepDecryptStepDetails].
  /// [destinationFileLocation] Specifies the location for the file being copied. Use ${Transfer:username} in this field to parametrize the destination prefix by username.
  /// [name] The name of the step, used as an identifier.
  /// [overwriteExisting] A flag that indicates whether or not to overwrite an existing file of the same name. The default is `FALSE`. Valid values are `TRUE` and `FALSE`.
  /// [sourceFileLocation] Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter ${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter ${original.file} to use the originally-uploaded file location as input for this step.
  /// [type] The type of encryption used. Currently, this value must be `"PGP"`.
  WorkflowStepDecryptStepDetails({
    this.destinationFileLocation,
    this.name,
    this.overwriteExisting,
    this.sourceFileLocation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFileLocation': ?destinationFileLocation == null ? null : destinationFileLocation!.toMap(),
      'name': ?name,
      'overwriteExisting': ?overwriteExisting,
      'sourceFileLocation': ?sourceFileLocation,
      'type': type,
    };
  }

  factory WorkflowStepDecryptStepDetails.fromMap(Map<String, dynamic> map) {
    return WorkflowStepDecryptStepDetails(
      destinationFileLocation: map['destinationFileLocation'] == null ? null : WorkflowStepDecryptStepDetailsDestinationFileLocation.fromMap((map['destinationFileLocation'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      overwriteExisting: map['overwriteExisting'] == null ? null : map['overwriteExisting'] as String,
      sourceFileLocation: map['sourceFileLocation'] == null ? null : map['sourceFileLocation'] as String,
      type: map['type'] as String,
    );
  }
}

