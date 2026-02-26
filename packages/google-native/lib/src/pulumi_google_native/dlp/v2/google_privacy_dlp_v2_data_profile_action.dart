// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_export.dart';
import 'google_privacy_dlp_v2_pub_sub_notification.dart';

/// A task to execute when a data profile has been generated.
class GooglePrivacyDlpV2DataProfileAction {
  /// Export data profiles into a provided location.
  final GooglePrivacyDlpV2Export? exportData;

  /// Publish a message into the Pub/Sub topic.
  final GooglePrivacyDlpV2PubSubNotification? pubSubNotification;

  GooglePrivacyDlpV2DataProfileAction({
    this.exportData,
    this.pubSubNotification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportDataValue = exportData;
    if (exportDataValue != null) {
      map['exportData'] = exportDataValue.toMap();
    }
    final pubSubNotificationValue = pubSubNotification;
    if (pubSubNotificationValue != null) {
      map['pubSubNotification'] = pubSubNotificationValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2DataProfileAction.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfileAction(
      exportData: map['exportData'] == null
          ? null
          : GooglePrivacyDlpV2Export.fromMap(
              (map['exportData'] as Map).cast<String, dynamic>()),
      pubSubNotification: map['pubSubNotification'] == null
          ? null
          : GooglePrivacyDlpV2PubSubNotification.fromMap(
              (map['pubSubNotification'] as Map).cast<String, dynamic>()),
    );
  }
}
