// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_on_exception_step_copy_step_details_destination_file_location_efs_file_location.dart';
import 'workflow_on_exception_step_copy_step_details_destination_file_location_s3_file_location.dart';

class WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation {
  /// Specifies the details for the EFS file being copied.
  final WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation?
      efsFileLocation;

  /// Specifies the details for the S3 file being copied.
  final WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationS3FileLocation?
      s3FileLocation;

  /// Creates a new [WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation].
  /// [efsFileLocation] Specifies the details for the EFS file being copied.
  /// [s3FileLocation] Specifies the details for the S3 file being copied.
  WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation({
    this.efsFileLocation,
    this.s3FileLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final efsFileLocationValue = efsFileLocation;
    if (efsFileLocationValue != null) {
      map['efsFileLocation'] = efsFileLocationValue.toMap();
    }
    final s3FileLocationValue = s3FileLocation;
    if (s3FileLocationValue != null) {
      map['s3FileLocation'] = s3FileLocationValue.toMap();
    }
    return map;
  }

  factory WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation.fromMap(
      Map<String, dynamic> map) {
    return WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocation(
      efsFileLocation: map['efsFileLocation'] == null
          ? null
          : WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation
              .fromMap((map['efsFileLocation'] as Map).cast<String, dynamic>()),
      s3FileLocation: map['s3FileLocation'] == null
          ? null
          : WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationS3FileLocation
              .fromMap((map['s3FileLocation'] as Map).cast<String, dynamic>()),
    );
  }
}
