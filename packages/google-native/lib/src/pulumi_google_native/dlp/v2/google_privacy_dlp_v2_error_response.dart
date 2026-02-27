// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response_dlp_v2.dart';

/// Details information about an error encountered during job execution or the results of an unsuccessful activation of the JobTrigger.
class GooglePrivacyDlpV2ErrorResponse {
  /// Detailed error codes and messages.
  final GoogleRpcStatusResponseDlpV2 details;

  /// The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  final List<String> timestamps;

  GooglePrivacyDlpV2ErrorResponse({
    required this.details,
    required this.timestamps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details.toMap();
    map['timestamps'] = timestamps;
    return map;
  }

  factory GooglePrivacyDlpV2ErrorResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ErrorResponse(
      details: GoogleRpcStatusResponseDlpV2.fromMap(
          (map['details'] as Map).cast<String, dynamic>()),
      timestamps: (map['timestamps'] as List).cast<String>(),
    );
  }
}
