// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_export.dart';
import 'google_privacy_dlp_v2_pub_sub_notification.dart';

/// A task to execute when a data profile has been generated.
class GooglePrivacyDlpV2DataProfileAction {
  /// Export data profiles into a provided location.
  final GooglePrivacyDlpV2Export? exportData;

  /// Publish a message into the Pub/Sub topic.
  final GooglePrivacyDlpV2PubSubNotification? pubSubNotification;

  /// Creates a new [GooglePrivacyDlpV2DataProfileAction].
  /// [exportData] Export data profiles into a provided location.
  /// [pubSubNotification] Publish a message into the Pub/Sub topic.
  GooglePrivacyDlpV2DataProfileAction({
    this.exportData,
    this.pubSubNotification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportData': ?exportData == null ? null : exportData!.toMap(),
      'pubSubNotification': ?pubSubNotification == null
          ? null
          : pubSubNotification!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DataProfileAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DataProfileAction(
      exportData: map['exportData'] == null
          ? null
          : GooglePrivacyDlpV2Export.fromMap(
              (map['exportData'] as Map).cast<String, dynamic>(),
            ),
      pubSubNotification: map['pubSubNotification'] == null
          ? null
          : GooglePrivacyDlpV2PubSubNotification.fromMap(
              (map['pubSubNotification'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
