// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_redis_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The highest IP address included in the range.
  final pulumi.Input<String> endIp;
  /// The name of the Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Redis Cache. Changing this forces a new resource to be created.
  final pulumi.Input<String> redisCacheName;
  /// The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The lowest IP address included in the range
  final pulumi.Input<String> startIp;

  /// Creates a new [FirewallRuleArgs].
  /// [endIp] The highest IP address included in the range.
  /// [name] The name of the Firewall Rule. Changing this forces a new resource to be created.
  /// [redisCacheName] The name of the Redis Cache. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which this Redis Cache exists. Changing this forces a new resource to be created.
  /// [startIp] The lowest IP address included in the range
  FirewallRuleArgs({
    required String endIp,
    String? name,
    required String redisCacheName,
    required String resourceGroupName,
    required String startIp,
  }) :
      endIp = pulumi.Input.asInput<String>(endIp),
      name = pulumi.Input.asOptionalInput<String>(name),
      redisCacheName = pulumi.Input.asInput<String>(redisCacheName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startIp = pulumi.Input.asInput<String>(startIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIp': endIp,
      'name': ?name,
      'redisCacheName': redisCacheName,
      'resourceGroupName': resourceGroupName,
      'startIp': startIp,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      endIp: map['endIp'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      redisCacheName: map['redisCacheName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      startIp: map['startIp'] as String,
    );
  }
}

