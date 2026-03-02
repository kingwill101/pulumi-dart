// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_step_copy_step_details_destination_file_location_efs_file_location.dart';
import 'workflow_step_copy_step_details_destination_file_location_s3_file_location.dart';

class WorkflowStepCopyStepDetailsDestinationFileLocation {
  /// Specifies the details for the EFS file being copied.
  final pulumi.Input<WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation>? efsFileLocation;
  /// Specifies the details for the S3 file being copied.
  final pulumi.Input<WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation>? s3FileLocation;

  /// Creates a new [WorkflowStepCopyStepDetailsDestinationFileLocation].
  /// [efsFileLocation] Specifies the details for the EFS file being copied.
  /// [s3FileLocation] Specifies the details for the S3 file being copied.
  WorkflowStepCopyStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation, Map<String, dynamic>>(efsFileLocation, (value) => value.toMap()),
      's3FileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation, Map<String, dynamic>>(s3FileLocation, (value) => value.toMap()),
    };
  }

  factory WorkflowStepCopyStepDetailsDestinationFileLocation.fromMap(Map<String, dynamic> map) {
    return WorkflowStepCopyStepDetailsDestinationFileLocation(
      efsFileLocation: map['efsFileLocation'] == null ? null : ((WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation.fromMap((map['efsFileLocation']! as Map).cast<String, dynamic>())).input()).input(),
      s3FileLocation: map['s3FileLocation'] == null ? null : ((WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation.fromMap((map['s3FileLocation']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

