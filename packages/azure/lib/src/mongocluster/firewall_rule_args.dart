// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongocluster_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The end IP address of the Mongo Cluster Firewall Rule.
  final pulumi.Input<String> endIpAddress;
  /// The ID of the Mongo Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> mongoClusterId;
  /// The name of the Mongo Cluster Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The start IP address of the Mongo Cluster Firewall Rule.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FirewallRuleArgs].
  /// [endIpAddress] The end IP address of the Mongo Cluster Firewall Rule.
  /// [mongoClusterId] The ID of the Mongo Cluster. Changing this forces a new resource to be created.
  /// [name] The name of the Mongo Cluster Firewall Rule. Changing this forces a new resource to be created.
  /// [startIpAddress] The start IP address of the Mongo Cluster Firewall Rule.
  FirewallRuleArgs({
    required String endIpAddress,
    required String mongoClusterId,
    String? name,
    required String startIpAddress,
  }) :
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      mongoClusterId = pulumi.Input.asInput<String>(mongoClusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'mongoClusterId': mongoClusterId,
      'name': ?name,
      'startIpAddress': startIpAddress,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      endIpAddress: map['endIpAddress'] as String,
      mongoClusterId: map['mongoClusterId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      startIpAddress: map['startIpAddress'] as String,
    );
  }
}

