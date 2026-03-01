// ignore_for_file: unused_element, unnecessary_cast

import 'status_error_response.dart';

/// Defines the status config properties.
class StatusConfigResponse {
  /// Object to transfer and persist errors that originate from the edge.
  final StatusErrorResponse error;
  /// A read-only timestamp indicating the last time the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud.
  final String lastTransitionTime;
  /// A read-only incremental counter indicating the number of times the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud. In steady state, this should equal version.
  final double version;

  /// Creates a new [StatusConfigResponse].
  /// [error] Object to transfer and persist errors that originate from the edge.
  /// [lastTransitionTime] A read-only timestamp indicating the last time the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud.
  /// [version] A read-only incremental counter indicating the number of times the configuration has been modified from the perspective of the current actual (edge) state of the CRD. Edge would be the only writer of this value and would sync back up to the cloud. In steady state, this should equal version.
  StatusConfigResponse({
    required this.error,
    required this.lastTransitionTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'lastTransitionTime': lastTransitionTime,
      'version': version,
    };
  }

  factory StatusConfigResponse.fromMap(Map<String, dynamic> map) {
    return StatusConfigResponse(
      error: StatusErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      lastTransitionTime: map['lastTransitionTime'] as String,
      version: map['version'] as double,
    );
  }
}

