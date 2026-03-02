// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_step_decrypt_step_details_destination_file_location_efs_file_location.dart';
import 'workflow_step_decrypt_step_details_destination_file_location_s3_file_location.dart';

class WorkflowStepDecryptStepDetailsDestinationFileLocation {
  /// Specifies the details for the EFS file being copied.
  final pulumi.Input<WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation>? efsFileLocation;
  /// Specifies the details for the S3 file being copied.
  final pulumi.Input<WorkflowStepDecryptStepDetailsDestinationFileLocationS3FileLocation>? s3FileLocation;

  /// Creates a new [WorkflowStepDecryptStepDetailsDestinationFileLocation].
  /// [efsFileLocation] Specifies the details for the EFS file being copied.
  /// [s3FileLocation] Specifies the details for the S3 file being copied.
  WorkflowStepDecryptStepDetailsDestinationFileLocation({
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
      efsFileLocation: map['efsFileLocation'] == null ? null : (WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation.fromMap((map['efsFileLocation'] as Map).cast<String, dynamic>())).input(),
      s3FileLocation: map['s3FileLocation'] == null ? null : (WorkflowStepDecryptStepDetailsDestinationFileLocationS3FileLocation.fromMap((map['s3FileLocation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

