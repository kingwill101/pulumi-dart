// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';

/// A record of an attempt to create a compilation result for this release config.
class ScheduledReleaseRecordResponse {
  /// The name of the created compilation result, if one was successfully created. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final String compilationResult;
  /// The error status encountered upon this attempt to create the compilation result, if the attempt was unsuccessful.
  final StatusResponse errorStatus;
  /// The timestamp of this release attempt.
  final String releaseTime;

  /// Creates a new [ScheduledReleaseRecordResponse].
  /// [compilationResult] The name of the created compilation result, if one was successfully created. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [errorStatus] The error status encountered upon this attempt to create the compilation result, if the attempt was unsuccessful.
  /// [releaseTime] The timestamp of this release attempt.
  ScheduledReleaseRecordResponse({
    required this.compilationResult,
    required this.errorStatus,
    required this.releaseTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationResult': compilationResult,
      'errorStatus': errorStatus.toMap(),
      'releaseTime': releaseTime,
    };
  }

  factory ScheduledReleaseRecordResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledReleaseRecordResponse(
      compilationResult: map['compilationResult'] as String,
      errorStatus: StatusResponse.fromMap((map['errorStatus'] as Map).cast<String, dynamic>()),
      releaseTime: map['releaseTime'] as String,
    );
  }
}

