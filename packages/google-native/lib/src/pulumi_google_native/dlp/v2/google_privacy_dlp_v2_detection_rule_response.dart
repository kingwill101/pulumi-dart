// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_hotword_rule_response.dart';

/// Deprecated; use `InspectionRuleSet` instead. Rule for modifying a `CustomInfoType` to alter behavior under certain circumstances, depending on the specific details of the rule. Not supported for the `surrogate_type` custom infoType.
class GooglePrivacyDlpV2DetectionRuleResponse {
  /// Hotword-based detection rule.
  final GooglePrivacyDlpV2HotwordRuleResponse hotwordRule;

  GooglePrivacyDlpV2DetectionRuleResponse({
    required this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hotwordRule'] = hotwordRule.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2DetectionRuleResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DetectionRuleResponse(
      hotwordRule: GooglePrivacyDlpV2HotwordRuleResponse.fromMap(
          (map['hotwordRule'] as Map).cast<String, dynamic>()),
    );
  }
}
