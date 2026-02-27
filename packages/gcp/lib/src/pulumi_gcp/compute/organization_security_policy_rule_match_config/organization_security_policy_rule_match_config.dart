// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_security_policy_rule_match_config_layer4_config/organization_security_policy_rule_match_config_layer4_config.dart';

class OrganizationSecurityPolicyRuleMatchConfig {
  /// Destination IP address range in CIDR format. Required for
  /// EGRESS rules.
  final List<String>? destIpRanges;

  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_match_config_layer4_config"></a>The `layer4_config` block supports:
  final List<OrganizationSecurityPolicyRuleMatchConfigLayer4Config>
      layer4Configs;

  /// Source IP address range in CIDR format. Required for
  /// INGRESS rules.
  final List<String>? srcIpRanges;

  OrganizationSecurityPolicyRuleMatchConfig({
    this.destIpRanges,
    required this.layer4Configs,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destIpRangesValue = destIpRanges;
    if (destIpRangesValue != null) {
      map['destIpRanges'] = destIpRangesValue;
    }
    map['layer4Configs'] = pulumi.Input.encodeList<
        OrganizationSecurityPolicyRuleMatchConfigLayer4Config,
        Map<String, dynamic>>(layer4Configs, (value) => value.toMap());
    final srcIpRangesValue = srcIpRanges;
    if (srcIpRangesValue != null) {
      map['srcIpRanges'] = srcIpRangesValue;
    }
    return map;
  }

  factory OrganizationSecurityPolicyRuleMatchConfig.fromMap(
      Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleMatchConfig(
      destIpRanges: map['destIpRanges'] == null
          ? null
          : (map['destIpRanges'] as List).cast<String>(),
      layer4Configs: pulumi.Input.decodeList<
              OrganizationSecurityPolicyRuleMatchConfigLayer4Config>(
          map['layer4Configs'],
          (value) =>
              OrganizationSecurityPolicyRuleMatchConfigLayer4Config.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
