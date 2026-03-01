// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_pub_sub_expressions.dart';

/// A condition for determining whether a Pub/Sub should be triggered.
class GooglePrivacyDlpV2DataProfilePubSubCondition {
  /// An expression.
  final GooglePrivacyDlpV2PubSubExpressions? expressions;

  /// Creates a new [GooglePrivacyDlpV2DataProfilePubSubCondition].
  /// [expressions] An expression.
  GooglePrivacyDlpV2DataProfilePubSubCondition({this.expressions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?expressions == null ? null : expressions!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DataProfilePubSubCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DataProfilePubSubCondition(
      expressions: map['expressions'] == null
          ? null
          : GooglePrivacyDlpV2PubSubExpressions.fromMap(
              (map['expressions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
