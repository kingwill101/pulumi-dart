// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_export_response.dart';
import 'google_privacy_dlp_v2_pub_sub_notification_response.dart';

/// A task to execute when a data profile has been generated.
class GooglePrivacyDlpV2DataProfileActionResponse {
  /// Export data profiles into a provided location.
  final GooglePrivacyDlpV2ExportResponse exportData;

  /// Publish a message into the Pub/Sub topic.
  final GooglePrivacyDlpV2PubSubNotificationResponse pubSubNotification;

  GooglePrivacyDlpV2DataProfileActionResponse({
    required this.exportData,
    required this.pubSubNotification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exportData'] = exportData.toMap();
    map['pubSubNotification'] = pubSubNotification.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2DataProfileActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfileActionResponse(
      exportData: GooglePrivacyDlpV2ExportResponse.fromMap(
          (map['exportData'] as Map).cast<String, dynamic>()),
      pubSubNotification: GooglePrivacyDlpV2PubSubNotificationResponse.fromMap(
          (map['pubSubNotification'] as Map).cast<String, dynamic>()),
    );
  }
}
