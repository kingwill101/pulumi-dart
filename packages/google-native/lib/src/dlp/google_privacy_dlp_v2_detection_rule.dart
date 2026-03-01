// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_hotword_rule.dart';

/// Deprecated; use `InspectionRuleSet` instead. Rule for modifying a `CustomInfoType` to alter behavior under certain circumstances, depending on the specific details of the rule. Not supported for the `surrogate_type` custom infoType.
class GooglePrivacyDlpV2DetectionRule {
  /// Hotword-based detection rule.
  final GooglePrivacyDlpV2HotwordRule? hotwordRule;

  /// Creates a new [GooglePrivacyDlpV2DetectionRule].
  /// [hotwordRule] Hotword-based detection rule.
  GooglePrivacyDlpV2DetectionRule({this.hotwordRule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRule': ?hotwordRule == null ? null : hotwordRule!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DetectionRule.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DetectionRule(
      hotwordRule: map['hotwordRule'] == null
          ? null
          : GooglePrivacyDlpV2HotwordRule.fromMap(
              (map['hotwordRule'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
