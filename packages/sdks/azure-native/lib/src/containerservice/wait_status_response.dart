// ignore_for_file: unused_element, unnecessary_cast

import 'update_status_response.dart';

/// The status of the wait duration.
class WaitStatusResponse {
  /// The status of the wait duration.
  final UpdateStatusResponse status;
  /// The wait duration configured in seconds.
  final int waitDurationInSeconds;

  /// Creates a new [WaitStatusResponse].
  /// [status] The status of the wait duration.
  /// [waitDurationInSeconds] The wait duration configured in seconds.
  WaitStatusResponse({
    required this.status,
    required this.waitDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status.toMap(),
      'waitDurationInSeconds': waitDurationInSeconds,
    };
  }

  factory WaitStatusResponse.fromMap(Map<String, dynamic> map) {
    return WaitStatusResponse(
      status: UpdateStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      waitDurationInSeconds: map['waitDurationInSeconds'] as int,
    );
  }
}

