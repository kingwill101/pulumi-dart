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
    required this.properties,
    required this.resourceGroupName,
    this.ruleName,
    required this.workspaceName,
  });

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
      properties: (FqdnOutboundRule.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

