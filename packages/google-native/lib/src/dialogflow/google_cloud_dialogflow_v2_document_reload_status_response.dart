// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response.dart';

/// The status of a reload attempt.
class GoogleCloudDialogflowV2DocumentReloadStatusResponse {
  /// The status of a reload attempt or the initial load.
  final GoogleRpcStatusResponse status;

  /// The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  final String time;

  /// Creates a new [GoogleCloudDialogflowV2DocumentReloadStatusResponse].
  /// [status] The status of a reload attempt or the initial load.
  /// [time] The time of a reload attempt. This reload may have been triggered automatically or manually and may not have succeeded.
  GoogleCloudDialogflowV2DocumentReloadStatusResponse({
    required this.status,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': status.toMap(), 'time': time};
  }

  factory GoogleCloudDialogflowV2DocumentReloadStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2DocumentReloadStatusResponse(
      status: GoogleRpcStatusResponse.fromMap(
        (map['status'] as Map).cast<String, dynamic>(),
      ),
      time: map['time'] as String,
    );
  }
}
