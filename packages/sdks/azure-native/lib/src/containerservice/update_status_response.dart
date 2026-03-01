// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// The status for an operation or group of operations.
class UpdateStatusResponse {
  /// The time the operation or group was completed.
  final String completedTime;
  /// The error details when a failure is encountered.
  final ErrorDetailResponse error;
  /// The time the operation or group was started.
  final String startTime;
  /// The State of the operation or group.
  final String state;

  /// Creates a new [UpdateStatusResponse].
  /// [completedTime] The time the operation or group was completed.
  /// [error] The error details when a failure is encountered.
  /// [startTime] The time the operation or group was started.
  /// [state] The State of the operation or group.
  UpdateStatusResponse({
    required this.completedTime,
    required this.error,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedTime': completedTime,
      'error': error.toMap(),
      'startTime': startTime,
      'state': state,
    };
  }

  factory UpdateStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpdateStatusResponse(
      completedTime: map['completedTime'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}

