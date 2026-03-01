// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_managed_network_settings_rule_args_doc}
/// Arguments for getManagedNetworkSettingsRule.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_managed_network_settings_rule_args_doc}
class GetManagedNetworkSettingsRuleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the workspace managed network outbound rule
  final pulumi.Input<String> ruleName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetManagedNetworkSettingsRuleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the workspace managed network outbound rule
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetManagedNetworkSettingsRuleArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'workspaceName': workspaceName,
    };
  }

  factory GetManagedNetworkSettingsRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedNetworkSettingsRuleArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

