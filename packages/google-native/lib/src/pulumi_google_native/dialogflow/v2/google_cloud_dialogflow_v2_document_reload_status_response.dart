// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response_dialogflow_v2.dart';

/// The status of a reload attempt.
class GoogleCloudDialogflowV2DocumentReloadStatusResponse {
  /// The status of a reload attempt or the initial load.
  final GoogleRpcStatusResponseDialogflowV2 status;

  /// The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  final String time;

  GoogleCloudDialogflowV2DocumentReloadStatusResponse({
    required this.status,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status.toMap();
    map['time'] = time;
    return map;
  }

  factory GoogleCloudDialogflowV2DocumentReloadStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2DocumentReloadStatusResponse(
      status: GoogleRpcStatusResponseDialogflowV2.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      time: map['time'] as String,
    );
  }
}
