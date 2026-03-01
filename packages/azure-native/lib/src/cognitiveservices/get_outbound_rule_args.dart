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
  GetOutboundRuleArgs({
    required String accountName,
    required String managedNetworkName,
    required String resourceGroupName,
    required String ruleName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      managedNetworkName = pulumi.Input.asInput<String>(managedNetworkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName);

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
      accountName: map['accountName'] as String,
      managedNetworkName: map['managedNetworkName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleName: map['ruleName'] as String,
    );
  }
}

