// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_on_exception_step_decrypt_step_details_destination_file_location_efs_file_location.dart';
import 'workflow_on_exception_step_decrypt_step_details_destination_file_location_s3_file_location.dart';

class WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation {
  /// Specifies the details for the EFS file being copied.
  final WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationEfsFileLocation?
      efsFileLocation;

  /// Specifies the details for the S3 file being copied.
  final WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation?
      s3FileLocation;

  /// Creates a new [WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation].
  /// [efsFileLocation] Specifies the details for the EFS file being copied.
  /// [s3FileLocation] Specifies the details for the S3 file being copied.
  WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation({
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

  factory WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation.fromMap(
      Map<String, dynamic> map) {
    return WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocation(
      efsFileLocation: map['efsFileLocation'] == null
          ? null
          : WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationEfsFileLocation
              .fromMap((map['efsFileLocation'] as Map).cast<String, dynamic>()),
      s3FileLocation: map['s3FileLocation'] == null
          ? null
          : WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation
              .fromMap((map['s3FileLocation'] as Map).cast<String, dynamic>()),
    );
  }
}
