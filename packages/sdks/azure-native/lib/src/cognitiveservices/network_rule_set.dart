// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_rule.dart';
import 'virtual_network_rule.dart';

/// A set of rules governing the network accessibility.
class NetworkRuleSet {
  /// Setting for trusted services.
  final pulumi.Input<String>? bypass;

  /// The default action when no rule from ipRules and from virtualNetworkRules match. This is only used after the bypass property has been evaluated.
  final pulumi.Input<String>? defaultAction;

  /// The list of IP address rules.
  final pulumi.Input<List<IpRule>>? ipRules;

  /// The list of virtual network rules.
  final pulumi.Input<List<VirtualNetworkRule>>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSet].
  /// [bypass] Setting for trusted services.
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
      'ipRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpRule>,
            List<Map<String, dynamic>>
          >(
            ipRules,
            (value) => pulumi.Input.encodeList<IpRule, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'virtualNetworkRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNetworkRule>,
            List<Map<String, dynamic>>
          >(
            virtualNetworkRules,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNetworkRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      bypass: (() {
        final guardedValue = map['bypass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultAction: (() {
        final guardedValue = map['defaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipRules: (() {
        final guardedValue = map['ipRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpRule>(
            guardedValue,
            (value) => IpRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      virtualNetworkRules: (() {
        final guardedValue = map['virtualNetworkRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNetworkRule>(
            guardedValue,
            (value) => VirtualNetworkRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
