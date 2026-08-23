// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_rule_group_properties.dart';

/// {@template pulumi_awsconnector_network_firewall_rule_group_args_doc}
/// The set of arguments for NetworkFirewallRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_network_firewall_rule_group_args_doc}
class NetworkFirewallRuleGroupArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of NetworkFirewallRuleGroup
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<NetworkFirewallRuleGroupProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkFirewallRuleGroupArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of NetworkFirewallRuleGroup
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const NetworkFirewallRuleGroupArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkFirewallRuleGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkFirewallRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallRuleGroupArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkFirewallRuleGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
