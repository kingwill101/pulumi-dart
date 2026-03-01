// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_discovery_rule_args_doc}
/// Arguments for getDiscoveryRule.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_discovery_rule_args_doc}
class GetDiscoveryRuleArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of the discovery rule. Must be unique within a health model.
  final pulumi.Input<String> discoveryRuleName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiscoveryRuleArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [discoveryRuleName] Name of the discovery rule. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiscoveryRuleArgs({
    required pulumi.Output<String> azureMonitorWorkspaceName,
    required pulumi.Output<String> discoveryRuleName,
    required pulumi.Output<String> healthModelName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      discoveryRuleName = pulumi.Input.asInput<String>(discoveryRuleName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'discoveryRuleName': discoveryRuleName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiscoveryRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveryRuleArgs(
      azureMonitorWorkspaceName: pulumi.Output.create<String>(map['azureMonitorWorkspaceName'] as String),
      discoveryRuleName: pulumi.Output.create<String>(map['discoveryRuleName'] as String),
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

