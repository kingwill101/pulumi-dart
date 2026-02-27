// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_inspection_rule.dart';

/// Rule set for modifying a set of infoTypes to alter behavior under certain circumstances, depending on the specific details of the rules within the set.
class GooglePrivacyDlpV2InspectionRuleSet {
  /// List of infoTypes this rule set is applied to.
  final List<GooglePrivacyDlpV2InfoType>? infoTypes;

  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  final List<GooglePrivacyDlpV2InspectionRule>? rules;

  GooglePrivacyDlpV2InspectionRuleSet({
    this.infoTypes,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final infoTypesValue = infoTypes;
    if (infoTypesValue != null) {
      map['infoTypes'] = pulumi.Input.encodeList<GooglePrivacyDlpV2InfoType,
          Map<String, dynamic>>(infoTypesValue, (value) => value.toMap());
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.encodeList<GooglePrivacyDlpV2InspectionRule,
          Map<String, dynamic>>(rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GooglePrivacyDlpV2InspectionRuleSet.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectionRuleSet(
      infoTypes: map['infoTypes'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2InfoType>(
              map['infoTypes'],
              (value) => GooglePrivacyDlpV2InfoType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2InspectionRule>(
              map['rules'],
              (value) => GooglePrivacyDlpV2InspectionRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
