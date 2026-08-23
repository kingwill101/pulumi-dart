// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_inbound_rule_args_doc}
/// Arguments for getInboundRule.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_inbound_rule_args_doc}
class GetInboundRuleArgs {
  /// Name of the inbound rule
  final pulumi.Input<String> inboundRuleName;
  /// Name of the nat gateway
  final pulumi.Input<String> natGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInboundRuleArgs].
  /// [inboundRuleName] Name of the inbound rule
  /// [natGatewayName] Name of the nat gateway
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetInboundRuleArgs({
    required this.inboundRuleName,
    required this.natGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundRuleName': inboundRuleName,
      'natGatewayName': natGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInboundRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundRuleArgs(
      inboundRuleName: pulumi.Input.fromValue(map['inboundRuleName'] as String),
      natGatewayName: pulumi.Input.fromValue(map['natGatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
