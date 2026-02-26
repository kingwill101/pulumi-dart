// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_security_policy_rule_match_config_layer4_config/organization_security_policy_rule_match_config_layer4_config.dart';

class OrganizationSecurityPolicyRuleMatchConfig {
  /// Destination IP address range in CIDR format. Required for
  /// EGRESS rules.
  final List<String>? destIpRanges;

  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedMatchConfigLayer4Config"" pulumi-lang-dotnet=""NestedMatchConfigLayer4Config"" pulumi-lang-go=""nestedMatchConfigLayer4Config"" pulumi-lang-python=""nested_match_config_layer4_config"" pulumi-lang-yaml=""nestedMatchConfigLayer4Config"" pulumi-lang-java=""nestedMatchConfigLayer4Config"">"nested_match_config_layer4_config"</span>></a>The <span pulumi-lang-nodejs="`layer4Config`" pulumi-lang-dotnet="`Layer4Config`" pulumi-lang-go="`layer4Config`" pulumi-lang-python="`layer4_config`" pulumi-lang-yaml="`layer4Config`" pulumi-lang-java="`layer4Config`">`layer4_config`</span> block supports:
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
    map['layer4Configs'] = Input.encodeList<
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
      layer4Configs: Input.decodeList<
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
