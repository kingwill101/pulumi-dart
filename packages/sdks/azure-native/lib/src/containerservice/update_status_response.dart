// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// The status for an operation or group of operations.
class UpdateStatusResponse {
  /// The time the operation or group was completed.
  final pulumi.Input<String> completedTime;
  /// The error details when a failure is encountered.
  final pulumi.Input<ErrorDetailResponse> error;
  /// The time the operation or group was started.
  final pulumi.Input<String> startTime;
  /// The State of the operation or group.
  final pulumi.Input<String> state;

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
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'startTime': startTime,
      'state': state,
    };
  }

  factory UpdateStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpdateStatusResponse(
      completedTime: (map['completedTime'] as String).input(),
      error: (ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

