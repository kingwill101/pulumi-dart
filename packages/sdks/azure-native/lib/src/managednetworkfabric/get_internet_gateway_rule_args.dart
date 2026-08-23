// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_internet_gateway_rule_args_doc}
/// Arguments for getInternetGatewayRule.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_internet_gateway_rule_args_doc}
class GetInternetGatewayRuleArgs {
  /// Name of the Internet Gateway rule.
  final pulumi.Input<String> internetGatewayRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInternetGatewayRuleArgs].
  /// [internetGatewayRuleName] Name of the Internet Gateway rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetInternetGatewayRuleArgs({
    required this.internetGatewayRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayRuleName': internetGatewayRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInternetGatewayRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayRuleArgs(
      internetGatewayRuleName: pulumi.Input.fromValue(map['internetGatewayRuleName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
