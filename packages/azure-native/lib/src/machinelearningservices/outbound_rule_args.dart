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
  OutboundRuleArgs({
    required String managedNetworkName,
    required FqdnOutboundRule properties,
    required String resourceGroupName,
    String? ruleName,
    required String workspaceName,
  }) :
      managedNetworkName = pulumi.Input.asInput<String>(managedNetworkName),
      properties = pulumi.Input.asInput<FqdnOutboundRule>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      managedNetworkName: map['managedNetworkName'] as String,
      properties: FqdnOutboundRule.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

