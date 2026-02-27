// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_pub_sub_condition.dart';
import 'google_privacy_dlp_v2_pub_sub_expressions_logical_operator.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2PubSubExpressions {
  /// Conditions to apply to the expression.
  final List<GooglePrivacyDlpV2PubSubCondition>? conditions;

  /// The operator to apply to the collection of conditions.
  final GooglePrivacyDlpV2PubSubExpressionsLogicalOperator? logicalOperator;

  GooglePrivacyDlpV2PubSubExpressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.encodeList<GooglePrivacyDlpV2PubSubCondition,
          Map<String, dynamic>>(conditionsValue, (value) => value.toMap());
    }
    final logicalOperatorValue = logicalOperator;
    if (logicalOperatorValue != null) {
      map['logicalOperator'] = logicalOperatorValue.value;
    }
    return map;
  }

  factory GooglePrivacyDlpV2PubSubExpressions.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubExpressions(
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2PubSubCondition>(
              map['conditions'],
              (value) => GooglePrivacyDlpV2PubSubCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      logicalOperator: map['logicalOperator'] == null
          ? null
          : GooglePrivacyDlpV2PubSubExpressionsLogicalOperator.fromValue(
              map['logicalOperator'] as String),
    );
  }
}
