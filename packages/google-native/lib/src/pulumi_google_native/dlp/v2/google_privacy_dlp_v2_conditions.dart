// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_condition.dart';

/// A collection of conditions.
class GooglePrivacyDlpV2Conditions {
  /// A collection of conditions.
  final List<GooglePrivacyDlpV2Condition>? conditions;

  GooglePrivacyDlpV2Conditions({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = pulumi.Input.encodeList<GooglePrivacyDlpV2Condition,
          Map<String, dynamic>>(conditionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GooglePrivacyDlpV2Conditions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Conditions(
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2Condition>(
              map['conditions'],
              (value) => GooglePrivacyDlpV2Condition.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
