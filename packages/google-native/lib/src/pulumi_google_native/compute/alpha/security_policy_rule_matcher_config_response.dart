// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_matcher_config_destination_port_response.dart';
import 'security_policy_rule_matcher_config_layer4_config_response.dart';

class SecurityPolicyRuleMatcherConfigResponse {
  /// CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<String> destIpRanges;

  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<SecurityPolicyRuleMatcherConfigDestinationPortResponse> destPorts;

  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<SecurityPolicyRuleMatcherConfigLayer4ConfigResponse> layer4Configs;

  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final List<String> srcIpRanges;

  SecurityPolicyRuleMatcherConfigResponse({
    required this.destIpRanges,
    required this.destPorts,
    required this.layer4Configs,
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destIpRanges'] = destIpRanges;
    map['destPorts'] = Input.encodeList<
        SecurityPolicyRuleMatcherConfigDestinationPortResponse,
        Map<String, dynamic>>(destPorts, (value) => value.toMap());
    map['layer4Configs'] = Input.encodeList<
        SecurityPolicyRuleMatcherConfigLayer4ConfigResponse,
        Map<String, dynamic>>(layer4Configs, (value) => value.toMap());
    map['srcIpRanges'] = srcIpRanges;
    return map;
  }

  factory SecurityPolicyRuleMatcherConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigResponse(
      destIpRanges: (map['destIpRanges'] as List).cast<String>(),
      destPorts: Input.decodeList<
              SecurityPolicyRuleMatcherConfigDestinationPortResponse>(
          map['destPorts'],
          (value) =>
              SecurityPolicyRuleMatcherConfigDestinationPortResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      layer4Configs:
          Input.decodeList<SecurityPolicyRuleMatcherConfigLayer4ConfigResponse>(
              map['layer4Configs'],
              (value) =>
                  SecurityPolicyRuleMatcherConfigLayer4ConfigResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
