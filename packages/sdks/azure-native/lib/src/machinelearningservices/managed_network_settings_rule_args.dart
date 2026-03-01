// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule.dart';

/// {@template pulumi_machinelearningservices_managed_network_settings_rule_args_doc}
/// The set of arguments for ManagedNetworkSettingsRule.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_managed_network_settings_rule_args_doc}
class ManagedNetworkSettingsRuleArgs {
  /// Outbound Rule for the managed network of a machine learning workspace.
  final pulumi.Input<FqdnOutboundRule> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the workspace managed network outbound rule
  final pulumi.Input<String>? ruleName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ManagedNetworkSettingsRuleArgs].
  /// [properties] Outbound Rule for the managed network of a machine learning workspace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the workspace managed network outbound rule
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ManagedNetworkSettingsRuleArgs({
    required pulumi.Output<FqdnOutboundRule> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? ruleName,
    required pulumi.Output<String> workspaceName,
  }) :
      properties = pulumi.Input.asInput<FqdnOutboundRule>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<FqdnOutboundRule, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'workspaceName': workspaceName,
    };
  }

  factory ManagedNetworkSettingsRuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettingsRuleArgs(
      properties: pulumi.Output.create<FqdnOutboundRule>(FqdnOutboundRule.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

