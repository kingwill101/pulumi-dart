// ignore_for_file: unused_element, unnecessary_cast

import 'status_response14.dart';

/// A record of an attempt to create a compilation result for this release config.
class ScheduledReleaseRecordResponse {
  /// The name of the created compilation result, if one was successfully created. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final String compilationResult;

  /// The error status encountered upon this attempt to create the compilation result, if the attempt was unsuccessful.
  final StatusResponse14 errorStatus;

  /// The timestamp of this release attempt.
  final String releaseTime;

  ScheduledReleaseRecordResponse({
    required this.compilationResult,
    required this.errorStatus,
    required this.releaseTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compilationResult'] = compilationResult;
    map['errorStatus'] = errorStatus.toMap();
    map['releaseTime'] = releaseTime;
    return map;
  }

  factory ScheduledReleaseRecordResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledReleaseRecordResponse(
      compilationResult: map['compilationResult'] as String,
      errorStatus: StatusResponse14.fromMap(
          (map['errorStatus'] as Map).cast<String, dynamic>()),
      releaseTime: map['releaseTime'] as String,
    );
  }
}
