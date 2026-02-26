// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_pub_sub_expressions.dart';

/// A condition for determining whether a Pub/Sub should be triggered.
class GooglePrivacyDlpV2DataProfilePubSubCondition {
  /// An expression.
  final GooglePrivacyDlpV2PubSubExpressions? expressions;

  GooglePrivacyDlpV2DataProfilePubSubCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionsValue = expressions;
    if (expressionsValue != null) {
      map['expressions'] = expressionsValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2DataProfilePubSubCondition.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfilePubSubCondition(
      expressions: map['expressions'] == null
          ? null
          : GooglePrivacyDlpV2PubSubExpressions.fromMap(
              (map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}
