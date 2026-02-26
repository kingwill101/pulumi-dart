// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_exclusion_rule_response.dart';
import 'google_privacy_dlp_v2_hotword_rule_response.dart';

/// A single inspection rule to be applied to infoTypes, specified in `InspectionRuleSet`.
class GooglePrivacyDlpV2InspectionRuleResponse {
  /// Exclusion rule.
  final GooglePrivacyDlpV2ExclusionRuleResponse exclusionRule;

  /// Hotword-based detection rule.
  final GooglePrivacyDlpV2HotwordRuleResponse hotwordRule;

  GooglePrivacyDlpV2InspectionRuleResponse({
    required this.exclusionRule,
    required this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusionRule'] = exclusionRule.toMap();
    map['hotwordRule'] = hotwordRule.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2InspectionRuleResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectionRuleResponse(
      exclusionRule: GooglePrivacyDlpV2ExclusionRuleResponse.fromMap(
          (map['exclusionRule'] as Map).cast<String, dynamic>()),
      hotwordRule: GooglePrivacyDlpV2HotwordRuleResponse.fromMap(
          (map['hotwordRule'] as Map).cast<String, dynamic>()),
    );
  }
}
