// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_firewall_policy_packet_mirroring_rule_match_layer4_config/network_firewall_policy_packet_mirroring_rule_match_layer4_config.dart';

class NetworkFirewallPolicyPacketMirroringRuleMatch {
  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final List<String>? destIpRanges;

  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedMatchLayer4Configs"" pulumi-lang-dotnet=""NestedMatchLayer4Configs"" pulumi-lang-go=""nestedMatchLayer4Configs"" pulumi-lang-python=""nested_match_layer4_configs"" pulumi-lang-yaml=""nestedMatchLayer4Configs"" pulumi-lang-java=""nestedMatchLayer4Configs"">"nested_match_layer4_configs"</span>></a>The <span pulumi-lang-nodejs="`layer4Configs`" pulumi-lang-dotnet="`Layer4Configs`" pulumi-lang-go="`layer4Configs`" pulumi-lang-python="`layer4_configs`" pulumi-lang-yaml="`layer4Configs`" pulumi-lang-java="`layer4Configs`">`layer4_configs`</span> block supports:
  final List<NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config>
      layer4Configs;

  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final List<String>? srcIpRanges;

  NetworkFirewallPolicyPacketMirroringRuleMatch({
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
        NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config,
        Map<String, dynamic>>(layer4Configs, (value) => value.toMap());
    final srcIpRangesValue = srcIpRanges;
    if (srcIpRangesValue != null) {
      map['srcIpRanges'] = srcIpRangesValue;
    }
    return map;
  }

  factory NetworkFirewallPolicyPacketMirroringRuleMatch.fromMap(
      Map<String, dynamic> map) {
    return NetworkFirewallPolicyPacketMirroringRuleMatch(
      destIpRanges: map['destIpRanges'] == null
          ? null
          : (map['destIpRanges'] as List).cast<String>(),
      layer4Configs: Input.decodeList<
              NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config>(
          map['layer4Configs'],
          (value) =>
              NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
