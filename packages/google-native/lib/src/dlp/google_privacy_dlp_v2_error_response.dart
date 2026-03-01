// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response.dart';

/// Details information about an error encountered during job execution or the results of an unsuccessful activation of the JobTrigger.
class GooglePrivacyDlpV2ErrorResponse {
  /// Detailed error codes and messages.
  final GoogleRpcStatusResponse details;

  /// The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  final List<String> timestamps;

  /// Creates a new [GooglePrivacyDlpV2ErrorResponse].
  /// [details] Detailed error codes and messages.
  /// [timestamps] The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  GooglePrivacyDlpV2ErrorResponse({
    required this.details,
    required this.timestamps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details.toMap(),
      'timestamps': timestamps,
    };
  }

  factory GooglePrivacyDlpV2ErrorResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ErrorResponse(
      details: GoogleRpcStatusResponse.fromMap(
        (map['details'] as Map).cast<String, dynamic>(),
      ),
      timestamps: (map['timestamps'] as List).cast<String>(),
    );
  }
}
