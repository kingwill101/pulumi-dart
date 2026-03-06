// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rule_set_ip_rule.dart';

/// Network Rule Set Properties of IotHub
class NetworkRuleSetProperties {
  /// If True, then Network Rule Set is also applied to BuiltIn EventHub EndPoint of IotHub
  final pulumi.Input<bool> applyToBuiltInEventHubEndpoint;
  /// Default Action for Network Rule Set
  final pulumi.Input<String>? defaultAction;
  /// List of IP Rules
  final pulumi.Input<List<NetworkRuleSetIpRule>> ipRules;

  /// Creates a new [NetworkRuleSetProperties].
  /// [applyToBuiltInEventHubEndpoint] If True, then Network Rule Set is also applied to BuiltIn EventHub EndPoint of IotHub
  /// [defaultAction] Default Action for Network Rule Set
  /// [ipRules] List of IP Rules
  const NetworkRuleSetProperties({
    required this.applyToBuiltInEventHubEndpoint,
    this.defaultAction,
    required this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToBuiltInEventHubEndpoint': applyToBuiltInEventHubEndpoint,
      'defaultAction': ?defaultAction,
      'ipRules': pulumi.Input.mapInputValue<List<NetworkRuleSetIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<NetworkRuleSetIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSetProperties.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetProperties(
      applyToBuiltInEventHubEndpoint: pulumi.Input.fromValue(map['applyToBuiltInEventHubEndpoint'] as bool),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkRuleSetIpRule>(map['ipRules']!, (value) => NetworkRuleSetIpRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

