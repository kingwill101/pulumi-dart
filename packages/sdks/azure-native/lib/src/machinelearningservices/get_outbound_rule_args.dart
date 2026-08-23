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
  const GetOutboundRuleArgs({
    required this.managedNetworkName,
    required this.resourceGroupName,
    required this.ruleName,
    required this.workspaceName,
  });

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
      managedNetworkName: pulumi.Input.fromValue(map['managedNetworkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
