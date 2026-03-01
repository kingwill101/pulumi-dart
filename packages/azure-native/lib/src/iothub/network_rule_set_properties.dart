// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rule_set_ip_rule.dart';

/// Network Rule Set Properties of IotHub
class NetworkRuleSetProperties {
  /// If True, then Network Rule Set is also applied to BuiltIn EventHub EndPoint of IotHub
  final bool applyToBuiltInEventHubEndpoint;
  /// Default Action for Network Rule Set
  final String? defaultAction;
  /// List of IP Rules
  final List<NetworkRuleSetIpRule> ipRules;

  /// Creates a new [NetworkRuleSetProperties].
  /// [applyToBuiltInEventHubEndpoint] If True, then Network Rule Set is also applied to BuiltIn EventHub EndPoint of IotHub
  /// [defaultAction] Default Action for Network Rule Set
  /// [ipRules] List of IP Rules
  NetworkRuleSetProperties({
    required this.applyToBuiltInEventHubEndpoint,
    this.defaultAction,
    required this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToBuiltInEventHubEndpoint': applyToBuiltInEventHubEndpoint,
      'defaultAction': ?defaultAction,
      'ipRules': pulumi.Input.encodeList<NetworkRuleSetIpRule, Map<String, dynamic>>(ipRules, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSetProperties.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetProperties(
      applyToBuiltInEventHubEndpoint: map['applyToBuiltInEventHubEndpoint'] as bool,
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction'] as String,
      ipRules: pulumi.Input.decodeList<NetworkRuleSetIpRule>(map['ipRules'], (value) => NetworkRuleSetIpRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

