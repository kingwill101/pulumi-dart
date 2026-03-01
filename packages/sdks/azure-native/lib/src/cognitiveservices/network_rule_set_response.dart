// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_rule_response.dart';
import 'virtual_network_rule_response.dart';

/// A set of rules governing the network accessibility.
class NetworkRuleSetResponse {
  /// Setting for trusted services.
  final String? bypass;
  /// The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  final String? defaultAction;
  /// The list of IP address rules.
  final List<IpRuleResponse>? ipRules;
  /// The list of virtual network rules.
  final List<VirtualNetworkRuleResponse>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSetResponse].
  /// [bypass] Setting for trusted services.
  /// [defaultAction] The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  /// [ipRules] The list of IP address rules.
  /// [virtualNetworkRules] The list of virtual network rules.
  NetworkRuleSetResponse({
    this.bypass,
    this.defaultAction,
    this.ipRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': ?defaultAction,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IpRuleResponse, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetResponse(
      bypass: map['bypass'] == null ? null : map['bypass'] as String,
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IpRuleResponse>(map['ipRules'], (value) => IpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkRuleResponse>(map['virtualNetworkRules'], (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

