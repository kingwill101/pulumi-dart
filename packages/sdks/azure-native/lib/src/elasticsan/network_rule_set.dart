// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_rule.dart';

/// A set of rules governing the network accessibility.
class NetworkRuleSet {
  /// The list of virtual network rules.
  final List<VirtualNetworkRule>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSet].
  /// [virtualNetworkRules] The list of virtual network rules.
  NetworkRuleSet({
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<VirtualNetworkRule, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkRule>(map['virtualNetworkRules'], (value) => VirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

