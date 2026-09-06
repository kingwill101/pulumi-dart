// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_discovery_rule_args_doc}
/// The set of arguments for DiscoveryRule.
/// {@endtemplate}
/// {@macro pulumi_monitor_discovery_rule_args_doc}
class DiscoveryRuleArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of the discovery rule. Must be unique within a health model.
  final pulumi.Input<String?>? discoveryRuleName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DiscoveryRuleArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [discoveryRuleName] Name of the discovery rule. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const DiscoveryRuleArgs({
    required this.azureMonitorWorkspaceName,
    this.discoveryRuleName,
    required this.healthModelName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'discoveryRuleName': ?discoveryRuleName,
      'healthModelName': healthModelName,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DiscoveryRuleArgs.fromMap(Map<String, dynamic> map) {
    return DiscoveryRuleArgs(
      azureMonitorWorkspaceName: pulumi.Input.fromValue(map['azureMonitorWorkspaceName'] as String),
      discoveryRuleName: (() { final guardedValue = map['discoveryRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
