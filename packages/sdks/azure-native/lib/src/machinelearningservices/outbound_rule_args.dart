// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule.dart';

/// {@template pulumi_machinelearningservices_outbound_rule_args_doc}
/// The set of arguments for OutboundRule.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_outbound_rule_args_doc}
class OutboundRuleArgs {
  /// Name of the managedNetwork associated with the workspace. Only 'default' is supported.
  final pulumi.Input<String> managedNetworkName;
  /// Outbound Rule for the managed network of a machine learning workspace.
  final pulumi.Input<FqdnOutboundRule> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the workspace managed network outbound rule
  final pulumi.Input<String>? ruleName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [OutboundRuleArgs].
  /// [managedNetworkName] Name of the managedNetwork associated with the workspace. Only 'default' is supported.
  /// [properties] Outbound Rule for the managed network of a machine learning workspace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the workspace managed network outbound rule
  /// [workspaceName] Azure Machine Learning Workspace Name
  const OutboundRuleArgs({
    required this.managedNetworkName,
    required this.properties,
    required this.resourceGroupName,
    this.ruleName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNetworkName': managedNetworkName,
      'properties': pulumi.Input.mapInputValue<FqdnOutboundRule, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'workspaceName': workspaceName,
    };
  }

  factory OutboundRuleArgs.fromMap(Map<String, dynamic> map) {
    return OutboundRuleArgs(
      managedNetworkName: pulumi.Input.fromValue(map['managedNetworkName'] as String),
      properties: pulumi.Input.fromValue(FqdnOutboundRule.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
