// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_step_decrypt_step_details_destination_file_location_efs_file_location.dart';
import 'workflow_step_decrypt_step_details_destination_file_location_s3_file_location.dart';

class WorkflowStepDecryptStepDetailsDestinationFileLocation {
  /// Details for the EFS file being copied. See `efsFileLocation` Block below.
  final pulumi.Input<WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation>? efsFileLocation;
  /// Details for the S3 file being copied. See `s3FileLocation` Block below.
  final pulumi.Input<WorkflowStepDecryptStepDetailsDestinationFileLocationS3FileLocation>? s3FileLocation;

  /// Creates a new [WorkflowStepDecryptStepDetailsDestinationFileLocation].
  /// [efsFileLocation] Details for the EFS file being copied. See `efsFileLocation` Block below.
  /// [s3FileLocation] Details for the S3 file being copied. See `s3FileLocation` Block below.
  const WorkflowStepDecryptStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation, Map<String, dynamic>>(efsFileLocation, (value) => value.toMap()),
      's3FileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowStepDecryptStepDetailsDestinationFileLocationS3FileLocation, Map<String, dynamic>>(s3FileLocation, (value) => value.toMap()),
    };
  }

  factory WorkflowStepDecryptStepDetailsDestinationFileLocation.fromMap(Map<String, dynamic> map) {
    return WorkflowStepDecryptStepDetailsDestinationFileLocation(
      efsFileLocation: (() { final guardedValue = map['efsFileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3FileLocation: (() { final guardedValue = map['s3FileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowStepDecryptStepDetailsDestinationFileLocationS3FileLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
