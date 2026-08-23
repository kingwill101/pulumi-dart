// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_error_response.dart';

/// Defines the status config properties.
class StatusConfigResponse {
  /// Object to transfer and persist errors that originate from the edge.
  final pulumi.Input<StatusErrorResponse> error;
  /// A read-only timestamp indicating the last time the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud.
  final pulumi.Input<String> lastTransitionTime;
  /// A read-only incremental counter indicating the number of times the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud. In steady state, this should equal version.
  final pulumi.Input<double> version;

  /// Creates a new [StatusConfigResponse].
  /// [error] Object to transfer and persist errors that originate from the edge.
  /// [lastTransitionTime] A read-only timestamp indicating the last time the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud.
  /// [version] A read-only incremental counter indicating the number of times the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud. In steady state, this should equal version.
  const StatusConfigResponse({
    required this.error,
    required this.lastTransitionTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<StatusErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'lastTransitionTime': lastTransitionTime,
      'version': version,
    };
  }

  factory StatusConfigResponse.fromMap(Map<String, dynamic> map) {
    return StatusConfigResponse(
      error: pulumi.Input.fromValue(StatusErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      lastTransitionTime: pulumi.Input.fromValue(map['lastTransitionTime'] as String),
      version: pulumi.Input.fromValue(map['version'] as double),
    );
  }
}
