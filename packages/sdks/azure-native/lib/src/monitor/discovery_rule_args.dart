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
    required pulumi.Output<String> azureMonitorWorkspaceName,
    pulumi.Output<String>? discoveryRuleName,
    required pulumi.Output<String> healthModelName,
    pulumi.Output<ApplicationInsightsTopologyDiscoveryRuleProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      discoveryRuleName = pulumi.Input.asOptionalInput<String>(discoveryRuleName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      properties = pulumi.Input.asOptionalInput<ApplicationInsightsTopologyDiscoveryRuleProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      azureMonitorWorkspaceName: pulumi.Output.create<String>(map['azureMonitorWorkspaceName'] as String),
      discoveryRuleName: map['discoveryRuleName'] == null ? null : pulumi.Output.create<String>(map['discoveryRuleName'] as String),
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ApplicationInsightsTopologyDiscoveryRuleProperties>(ApplicationInsightsTopologyDiscoveryRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

