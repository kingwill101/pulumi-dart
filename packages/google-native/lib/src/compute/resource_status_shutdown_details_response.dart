// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// Specifies if the instance is in `SHUTTING_DOWN` state or there is a instance stopping scheduled.
class ResourceStatusShutdownDetailsResponse {
  /// Duration for graceful shutdown. Only applicable when `stop_state=SHUTTING_DOWN`.
  final DurationResponse maxDuration;

  /// Past timestamp indicating the beginning of current `stopState` in RFC3339 text format.
  final String requestTimestamp;

  /// Current stopping state of the instance.
  final String stopState;

  /// Target instance state.
  final String targetState;

  /// Creates a new [ResourceStatusShutdownDetailsResponse].
  /// [maxDuration] Duration for graceful shutdown. Only applicable when `stop_state=SHUTTING_DOWN`.
  /// [requestTimestamp] Past timestamp indicating the beginning of current `stopState` in RFC3339 text format.
  /// [stopState] Current stopping state of the instance.
  /// [targetState] Target instance state.
  ResourceStatusShutdownDetailsResponse({
    required this.maxDuration,
    required this.requestTimestamp,
    required this.stopState,
    required this.targetState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDuration': maxDuration.toMap(),
      'requestTimestamp': requestTimestamp,
      'stopState': stopState,
      'targetState': targetState,
    };
  }

  factory ResourceStatusShutdownDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceStatusShutdownDetailsResponse(
      maxDuration: DurationResponse.fromMap(
        (map['maxDuration'] as Map).cast<String, dynamic>(),
      ),
      requestTimestamp: map['requestTimestamp'] as String,
      stopState: map['stopState'] as String,
      targetState: map['targetState'] as String,
    );
  }
}
