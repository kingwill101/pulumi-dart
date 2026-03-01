// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_outbound_rule_args_doc}
/// Arguments for getOutboundRule.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_outbound_rule_args_doc}
class GetOutboundRuleArgs {
  /// Name of the managedNetwork associated with the workspace. Only 'default' is supported.
  final pulumi.Input<String> managedNetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the workspace managed network outbound rule
  final pulumi.Input<String> ruleName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetOutboundRuleArgs].
  /// [managedNetworkName] Name of the managedNetwork associated with the workspace. Only 'default' is supported.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the workspace managed network outbound rule
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetOutboundRuleArgs({
    required pulumi.Output<String> managedNetworkName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleName,
    required pulumi.Output<String> workspaceName,
  }) :
      managedNetworkName = pulumi.Input.asInput<String>(managedNetworkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNetworkName': managedNetworkName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'workspaceName': workspaceName,
    };
  }

  factory GetOutboundRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetOutboundRuleArgs(
      managedNetworkName: pulumi.Output.create<String>(map['managedNetworkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

