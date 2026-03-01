// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_security_rule_args_doc}
/// Arguments for getSecurityRule.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_security_rule_args_doc}
class GetSecurityRuleArgs {
  /// Name of the network security group
  final pulumi.Input<String> networkSecurityGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the security rule.
  final pulumi.Input<String> securityRuleName;

  /// Creates a new [GetSecurityRuleArgs].
  /// [networkSecurityGroupName] Name of the network security group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityRuleName] Name of the security rule.
  GetSecurityRuleArgs({
    required String networkSecurityGroupName,
    required String resourceGroupName,
    required String securityRuleName,
  }) :
      networkSecurityGroupName = pulumi.Input.asInput<String>(networkSecurityGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityRuleName = pulumi.Input.asInput<String>(securityRuleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityGroupName': networkSecurityGroupName,
      'resourceGroupName': resourceGroupName,
      'securityRuleName': securityRuleName,
    };
  }

  factory GetSecurityRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityRuleArgs(
      networkSecurityGroupName: map['networkSecurityGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityRuleName: map['securityRuleName'] as String,
    );
  }
}

