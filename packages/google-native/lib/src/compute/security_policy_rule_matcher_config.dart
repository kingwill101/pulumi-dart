// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_config_destination_port.dart';
import 'security_policy_rule_matcher_config_layer4_config.dart';

class SecurityPolicyRuleMatcherConfig {
  /// CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<String>? destIpRanges;

  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<SecurityPolicyRuleMatcherConfigDestinationPort>? destPorts;

  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<SecurityPolicyRuleMatcherConfigLayer4Config>? layer4Configs;

  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final List<String>? srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatcherConfig].
  /// [destIpRanges] CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [destPorts] Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [srcIpRanges] CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  SecurityPolicyRuleMatcherConfig({
    this.destIpRanges,
    this.destPorts,
    this.layer4Configs,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destIpRangesValue = destIpRanges;
    if (destIpRangesValue != null) {
      map['destIpRanges'] = destIpRangesValue;
    }
    final destPortsValue = destPorts;
    if (destPortsValue != null) {
      map['destPorts'] = pulumi.Input.encodeList<
          SecurityPolicyRuleMatcherConfigDestinationPort,
          Map<String, dynamic>>(destPortsValue, (value) => value.toMap());
    }
    final layer4ConfigsValue = layer4Configs;
    if (layer4ConfigsValue != null) {
      map['layer4Configs'] = pulumi.Input.encodeList<
          SecurityPolicyRuleMatcherConfigLayer4Config,
          Map<String, dynamic>>(layer4ConfigsValue, (value) => value.toMap());
    }
    final srcIpRangesValue = srcIpRanges;
    if (srcIpRangesValue != null) {
      map['srcIpRanges'] = srcIpRangesValue;
    }
    return map;
  }

  factory SecurityPolicyRuleMatcherConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfig(
      destIpRanges: map['destIpRanges'] == null
          ? null
          : (map['destIpRanges'] as List).cast<String>(),
      destPorts: map['destPorts'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRuleMatcherConfigDestinationPort>(
              map['destPorts'],
              (value) => SecurityPolicyRuleMatcherConfigDestinationPort.fromMap(
                  (value as Map).cast<String, dynamic>())),
      layer4Configs: map['layer4Configs'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRuleMatcherConfigLayer4Config>(
              map['layer4Configs'],
              (value) => SecurityPolicyRuleMatcherConfigLayer4Config.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
