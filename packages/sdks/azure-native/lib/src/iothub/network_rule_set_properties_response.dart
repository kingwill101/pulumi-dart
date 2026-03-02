// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rule_set_ip_rule_response.dart';

/// Network Rule Set Properties of IotHub
class NetworkRuleSetPropertiesResponse {
  /// If True, then Network Rule Set is also applied to BuiltIn EventHub EndPoint of IotHub
  final pulumi.Input<bool> applyToBuiltInEventHubEndpoint;
  /// Default Action for Network Rule Set
  final pulumi.Input<String>? defaultAction;
  /// List of IP Rules
  final pulumi.Input<List<NetworkRuleSetIpRuleResponse>> ipRules;

  /// Creates a new [NetworkRuleSetPropertiesResponse].
  /// [applyToBuiltInEventHubEndpoint] If True, then Network Rule Set is also applied to BuiltIn EventHub EndPoint of IotHub
  /// [defaultAction] Default Action for Network Rule Set
  /// [ipRules] List of IP Rules
  NetworkRuleSetPropertiesResponse({
    required this.applyToBuiltInEventHubEndpoint,
    this.defaultAction,
    required this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToBuiltInEventHubEndpoint': applyToBuiltInEventHubEndpoint,
      'defaultAction': ?defaultAction,
      'ipRules': pulumi.Input.mapInputValue<List<NetworkRuleSetIpRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<NetworkRuleSetIpRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetPropertiesResponse(
      applyToBuiltInEventHubEndpoint: (map['applyToBuiltInEventHubEndpoint'] as bool).input(),
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction'] as String).input(),
      ipRules: (pulumi.Input.decodeList<NetworkRuleSetIpRuleResponse>(map['ipRules'], (value) => NetworkRuleSetIpRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

