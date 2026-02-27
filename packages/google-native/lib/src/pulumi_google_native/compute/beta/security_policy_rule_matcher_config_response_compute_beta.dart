// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_config_layer4_config_response_compute_beta.dart';

class SecurityPolicyRuleMatcherConfigResponseComputeBeta {
  /// CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<String> destIpRanges;

  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta>
      layer4Configs;

  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final List<String> srcIpRanges;

  SecurityPolicyRuleMatcherConfigResponseComputeBeta({
    required this.destIpRanges,
    required this.layer4Configs,
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destIpRanges'] = destIpRanges;
    map['layer4Configs'] = pulumi.Input.encodeList<
        SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta,
        Map<String, dynamic>>(layer4Configs, (value) => value.toMap());
    map['srcIpRanges'] = srcIpRanges;
    return map;
  }

  factory SecurityPolicyRuleMatcherConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigResponseComputeBeta(
      destIpRanges: (map['destIpRanges'] as List).cast<String>(),
      layer4Configs: pulumi.Input.decodeList<
              SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta>(
          map['layer4Configs'],
          (value) =>
              SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
