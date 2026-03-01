// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_exclusion_rule.dart';
import 'google_privacy_dlp_v2_hotword_rule.dart';

/// A single inspection rule to be applied to infoTypes, specified in `InspectionRuleSet`.
class GooglePrivacyDlpV2InspectionRule {
  /// Exclusion rule.
  final GooglePrivacyDlpV2ExclusionRule? exclusionRule;

  /// Hotword-based detection rule.
  final GooglePrivacyDlpV2HotwordRule? hotwordRule;

  /// Creates a new [GooglePrivacyDlpV2InspectionRule].
  /// [exclusionRule] Exclusion rule.
  /// [hotwordRule] Hotword-based detection rule.
  GooglePrivacyDlpV2InspectionRule({this.exclusionRule, this.hotwordRule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionRule': ?exclusionRule == null ? null : exclusionRule!.toMap(),
      'hotwordRule': ?hotwordRule == null ? null : hotwordRule!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2InspectionRule.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectionRule(
      exclusionRule: map['exclusionRule'] == null
          ? null
          : GooglePrivacyDlpV2ExclusionRule.fromMap(
              (map['exclusionRule'] as Map).cast<String, dynamic>(),
            ),
      hotwordRule: map['hotwordRule'] == null
          ? null
          : GooglePrivacyDlpV2HotwordRule.fromMap(
              (map['hotwordRule'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
