// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response6.dart';

/// The status of a reload attempt.
class GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse {
  /// The status of a reload attempt or the initial load.
  final GoogleRpcStatusResponse6 status;

  /// The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  final String time;

  GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse({
    required this.status,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status.toMap();
    map['time'] = time;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1DocumentReloadStatusResponse(
      status: GoogleRpcStatusResponse6.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      time: map['time'] as String,
    );
  }
}
