// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';

/// Further data for the failed state.
class FailedDataResponse {
  /// The error that caused the queued resource to enter the FAILED state.
  final StatusResponse error;

  /// Creates a new [FailedDataResponse].
  /// [error] The error that caused the queued resource to enter the FAILED state.
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
      error:
          StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
    );
  }
}
