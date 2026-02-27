// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_tpu_v2alpha1.dart';

/// Further data for the failed state.
class FailedDataResponse {
  /// The error that caused the queued resource to enter the FAILED state.
  final StatusResponseTpuV2alpha1 error;

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
      error: StatusResponseTpuV2alpha1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
    );
  }
}
