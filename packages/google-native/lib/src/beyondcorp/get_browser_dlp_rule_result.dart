// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_rule_setting_response.dart';

/// Result data returned by getBrowserDlpRule.
class GetBrowserDlpRuleResult {
  /// The group to which this Rule should be applied to.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse group;

  /// Unique resource name. The name is ignored when creating BrowserDlpRule.
  final String name;

  /// The policy settings to apply.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse
      ruleSetting;

  /// Creates a new [GetBrowserDlpRuleResult].
  /// [group] The group to which this Rule should be applied to.
  /// [name] Unique resource name. The name is ignored when creating BrowserDlpRule.
  /// [ruleSetting] The policy settings to apply.
  GetBrowserDlpRuleResult({
    required this.group,
    required this.name,
    required this.ruleSetting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group.toMap();
    map['name'] = name;
    map['ruleSetting'] = ruleSetting.toMap();
    return map;
  }

  factory GetBrowserDlpRuleResult.fromMap(Map<String, dynamic> map) {
    return GetBrowserDlpRuleResult(
      group: GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse.fromMap(
          (map['group'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      ruleSetting:
          GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse
              .fromMap((map['ruleSetting'] as Map).cast<String, dynamic>()),
    );
  }
}
