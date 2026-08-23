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
  const NetworkRuleSetResponse({
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
      bypass: (() { final guardedValue = map['bypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpRuleResponse>(guardedValue, (value) => IpRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkRuleResponse>(guardedValue, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
