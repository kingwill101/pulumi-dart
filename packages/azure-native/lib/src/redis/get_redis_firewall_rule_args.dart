// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_redis_firewall_rule_args_doc}
/// Arguments for getRedisFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_redis_get_redis_firewall_rule_args_doc}
class GetRedisFirewallRuleArgs {
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the firewall rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetRedisFirewallRuleArgs].
  /// [cacheName] The name of the Redis cache.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleName] The name of the firewall rule.
  GetRedisFirewallRuleArgs({
    required String cacheName,
    required String resourceGroupName,
    required String ruleName,
  }) :
      cacheName = pulumi.Input.asInput<String>(cacheName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
    };
  }

  factory GetRedisFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRedisFirewallRuleArgs(
      cacheName: map['cacheName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleName: map['ruleName'] as String,
    );
  }
}

