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
      'errors':
          ?pulumi.Input.mapOptionalInputValue<
            MoveResourceErrorResponse,
            Map<String, dynamic>
          >(errors, (value) => value.toMap()),
      'jobStatus':
          ?pulumi.Input.mapOptionalInputValue<
            JobStatusResponse,
            Map<String, dynamic>
          >(jobStatus, (value) => value.toMap()),
      'moveState': moveState,
    };
  }

  factory MoveResourcePropertiesResponseMoveStatus.fromMap(
    Map<String, dynamic> map,
  ) {
    return MoveResourcePropertiesResponseMoveStatus(
      errors: (() {
        final guardedValue = map['errors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MoveResourceErrorResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jobStatus: (() {
        final guardedValue = map['jobStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobStatusResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      moveState: pulumi.Input.fromValue(map['moveState'] as String),
    );
  }
}
