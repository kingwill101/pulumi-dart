// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_rule_response.dart';
import 'virtual_network_rule_response.dart';

/// A set of rules governing the network accessibility.
class NetworkRuleSetResponse {
  /// Setting for trusted services.
  final pulumi.Input<String>? bypass;
  /// The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  final pulumi.Input<String>? defaultAction;
  /// The list of IP address rules.
  final pulumi.Input<List<IpRuleResponse>>? ipRules;
  /// The list of virtual network rules.
  final pulumi.Input<List<VirtualNetworkRuleResponse>>? virtualNetworkRules;

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
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IpRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IpRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkRuleResponse>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetResponse(
      bypass: map['bypass'] == null ? null : (map['bypass']! as String).input(),
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction']! as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IpRuleResponse>(map['ipRules']!, (value) => IpRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkRuleResponse>(map['virtualNetworkRules']!, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

