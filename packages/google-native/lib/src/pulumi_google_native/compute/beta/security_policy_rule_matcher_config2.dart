// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_matcher_config_layer4_config2.dart';

class SecurityPolicyRuleMatcherConfig2 {
  /// CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<String>? destIpRanges;

  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<SecurityPolicyRuleMatcherConfigLayer4Config2>? layer4Configs;

  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final List<String>? srcIpRanges;

  SecurityPolicyRuleMatcherConfig2({
    this.destIpRanges,
    this.layer4Configs,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destIpRangesValue = destIpRanges;
    if (destIpRangesValue != null) {
      map['destIpRanges'] = destIpRangesValue;
    }
    final layer4ConfigsValue = layer4Configs;
    if (layer4ConfigsValue != null) {
      map['layer4Configs'] = Input.encodeList<
          SecurityPolicyRuleMatcherConfigLayer4Config2,
          Map<String, dynamic>>(layer4ConfigsValue, (value) => value.toMap());
    }
    final srcIpRangesValue = srcIpRanges;
    if (srcIpRangesValue != null) {
      map['srcIpRanges'] = srcIpRangesValue;
    }
    return map;
  }

  factory SecurityPolicyRuleMatcherConfig2.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfig2(
      destIpRanges: map['destIpRanges'] == null
          ? null
          : (map['destIpRanges'] as List).cast<String>(),
      layer4Configs: map['layer4Configs'] == null
          ? null
          : Input.decodeList<SecurityPolicyRuleMatcherConfigLayer4Config2>(
              map['layer4Configs'],
              (value) => SecurityPolicyRuleMatcherConfigLayer4Config2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
