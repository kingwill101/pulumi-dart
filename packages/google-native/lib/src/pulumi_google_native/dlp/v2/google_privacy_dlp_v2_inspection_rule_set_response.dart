// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_info_type_response.dart';
import 'google_privacy_dlp_v2_inspection_rule_response.dart';

/// Rule set for modifying a set of infoTypes to alter behavior under certain circumstances, depending on the specific details of the rules within the set.
class GooglePrivacyDlpV2InspectionRuleSetResponse {
  /// List of infoTypes this rule set is applied to.
  final List<GooglePrivacyDlpV2InfoTypeResponse> infoTypes;

  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  final List<GooglePrivacyDlpV2InspectionRuleResponse> rules;

  GooglePrivacyDlpV2InspectionRuleSetResponse({
    required this.infoTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['infoTypes'] = Input.encodeList<GooglePrivacyDlpV2InfoTypeResponse,
        Map<String, dynamic>>(infoTypes, (value) => value.toMap());
    map['rules'] = Input.encodeList<GooglePrivacyDlpV2InspectionRuleResponse,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2InspectionRuleSetResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectionRuleSetResponse(
      infoTypes: Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(
          map['infoTypes'],
          (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      rules: Input.decodeList<GooglePrivacyDlpV2InspectionRuleResponse>(
          map['rules'],
          (value) => GooglePrivacyDlpV2InspectionRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
