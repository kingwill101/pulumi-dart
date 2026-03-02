// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_topology_discovery_rule_properties.dart';

/// {@template pulumi_monitor_discovery_rule_args_doc}
/// The set of arguments for DiscoveryRule.
/// {@endtemplate}
/// {@macro pulumi_monitor_discovery_rule_args_doc}
class DiscoveryRuleArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of the discovery rule. Must be unique within a health model.
  final pulumi.Input<String>? discoveryRuleName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ApplicationInsightsTopologyDiscoveryRuleProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DiscoveryRuleArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [discoveryRuleName] Name of the discovery rule. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DiscoveryRuleArgs({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsTopologyDiscoveryRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DiscoveryRuleArgs.fromMap(Map<String, dynamic> map) {
    return DiscoveryRuleArgs(
      azureMonitorWorkspaceName: (map['azureMonitorWorkspaceName'] as String).input(),
      discoveryRuleName: map['discoveryRuleName'] == null ? null : (map['discoveryRuleName']! as String).input(),
      healthModelName: (map['healthModelName'] as String).input(),
      properties: map['properties'] == null ? null : (ApplicationInsightsTopologyDiscoveryRuleProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

