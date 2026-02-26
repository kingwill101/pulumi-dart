// ignore_for_file: unused_element, unnecessary_cast

import 'status_response27.dart';

/// Further data for the failed state.
class FailedDataResponse {
  /// The error that caused the queued resource to enter the FAILED state.
  final StatusResponse27 error;

  FailedDataResponse({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    return map;
  }

  factory FailedDataResponse.fromMap(Map<String, dynamic> map) {
    return FailedDataResponse(
      error: StatusResponse27.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
    );
  }
}
