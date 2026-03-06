// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_outbound_rule_args_doc}
/// Arguments for getOutboundRule.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_outbound_rule_args_doc}
class GetOutboundRuleArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  final pulumi.Input<String> managedNetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the cognitive services account managed network outbound rule
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetOutboundRuleArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [managedNetworkName] Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the cognitive services account managed network outbound rule
  const GetOutboundRuleArgs({
    required this.accountName,
    required this.managedNetworkName,
    required this.resourceGroupName,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'managedNetworkName': managedNetworkName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
    };
  }

  factory GetOutboundRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetOutboundRuleArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      managedNetworkName: pulumi.Input.fromValue(map['managedNetworkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
    );
  }
}

