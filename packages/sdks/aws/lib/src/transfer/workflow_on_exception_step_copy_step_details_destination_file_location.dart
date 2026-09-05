// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_on_exception_step_copy_step_details_destination_file_location_efs_file_location.dart';
import 'workflow_on_exception_step_copy_step_details_destination_file_location_s3_file_location.dart';

class WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation {
  /// Details for the EFS file being copied. See `efsFileLocation` Block below.
  final pulumi.Input<WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation?>? efsFileLocation;
  /// Details for the S3 file being copied. See `s3FileLocation` Block below.
  final pulumi.Input<WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationS3FileLocation?>? s3FileLocation;

  /// Creates a new [WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation].
  /// [efsFileLocation] Details for the EFS file being copied. See `efsFileLocation` Block below.
  /// [s3FileLocation] Details for the S3 file being copied. See `s3FileLocation` Block below.
  const WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation, Map<String, dynamic>>(efsFileLocation, (value) => value.toMap()),
      's3FileLocation': ?pulumi.Input.mapOptionalInputValue<WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationS3FileLocation, Map<String, dynamic>>(s3FileLocation, (value) => value.toMap()),
    };
  }

  factory WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation(
      efsFileLocation: (() { final guardedValue = map['efsFileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3FileLocation: (() { final guardedValue = map['s3FileLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationS3FileLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
