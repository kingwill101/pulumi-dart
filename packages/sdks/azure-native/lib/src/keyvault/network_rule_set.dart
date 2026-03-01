// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';
import 'virtual_network_rule.dart';

/// A set of rules governing the network accessibility of a vault.
class NetworkRuleSet {
  /// Tells what traffic can bypass network rules. This can be 'AzureServices' or 'None'.  If not specified the default is 'AzureServices'.
  final String? bypass;
  /// The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  final String? defaultAction;
  /// The list of IP address rules.
  final List<IPRule>? ipRules;
  /// The list of virtual network rules.
  final List<VirtualNetworkRule>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSet].
  /// [bypass] Tells what traffic can bypass network rules. This can be 'AzureServices' or 'None'.  If not specified the default is 'AzureServices'.
  /// [defaultAction] The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  /// [ipRules] The list of IP address rules.
  /// [virtualNetworkRules] The list of virtual network rules.
  NetworkRuleSet({
    this.bypass,
    this.defaultAction,
    this.ipRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': ?defaultAction,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<VirtualNetworkRule, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      bypass: map['bypass'] == null ? null : map['bypass'] as String,
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRule>(map['ipRules'], (value) => IPRule.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkRule>(map['virtualNetworkRules'], (value) => VirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

