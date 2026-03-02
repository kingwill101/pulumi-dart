// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_status_response.dart';
import 'move_resource_error_response.dart';

/// Defines the move resource status.
class MoveResourcePropertiesResponseMoveStatus {
  /// An error response from the azure resource mover service.
  final pulumi.Input<MoveResourceErrorResponse>? errors;
  /// Defines the job status.
  final pulumi.Input<JobStatusResponse>? jobStatus;
  /// Defines the MoveResource states.
  final pulumi.Input<String> moveState;

  /// Creates a new [MoveResourcePropertiesResponseMoveStatus].
  /// [errors] An error response from the azure resource mover service.
  /// [jobStatus] Defines the job status.
  /// [moveState] Defines the MoveResource states.
  MoveResourcePropertiesResponseMoveStatus({
    this.errors,
    this.jobStatus,
    required this.moveState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<MoveResourceErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'jobStatus': ?pulumi.Input.mapOptionalInputValue<JobStatusResponse, Map<String, dynamic>>(jobStatus, (value) => value.toMap()),
      'moveState': moveState,
    };
  }

  factory MoveResourcePropertiesResponseMoveStatus.fromMap(Map<String, dynamic> map) {
    return MoveResourcePropertiesResponseMoveStatus(
      errors: map['errors'] == null ? null : (MoveResourceErrorResponse.fromMap((map['errors'] as Map).cast<String, dynamic>())).input(),
      jobStatus: map['jobStatus'] == null ? null : (JobStatusResponse.fromMap((map['jobStatus'] as Map).cast<String, dynamic>())).input(),
      moveState: (map['moveState'] as String).input(),
    );
  }
}

