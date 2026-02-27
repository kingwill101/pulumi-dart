// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_pub_sub_condition_response.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2PubSubExpressionsResponse {
  /// Conditions to apply to the expression.
  final List<GooglePrivacyDlpV2PubSubConditionResponse> conditions;

  /// The operator to apply to the collection of conditions.
  final String logicalOperator;

  GooglePrivacyDlpV2PubSubExpressionsResponse({
    required this.conditions,
    required this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2PubSubConditionResponse,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['logicalOperator'] = logicalOperator;
    return map;
  }

  factory GooglePrivacyDlpV2PubSubExpressionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubExpressionsResponse(
      conditions:
          pulumi.Input.decodeList<GooglePrivacyDlpV2PubSubConditionResponse>(
              map['conditions'],
              (value) => GooglePrivacyDlpV2PubSubConditionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      logicalOperator: map['logicalOperator'] as String,
    );
  }
}
