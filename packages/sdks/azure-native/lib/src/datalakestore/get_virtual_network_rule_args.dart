// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakestore_get_virtual_network_rule_args_doc}
/// Arguments for getVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_datalakestore_get_virtual_network_rule_args_doc}
class GetVirtualNetworkRuleArgs {
  /// The name of the Data Lake Store account.
  final pulumi.Input<String> accountName;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network rule to retrieve.
  final pulumi.Input<String> virtualNetworkRuleName;

  /// Creates a new [GetVirtualNetworkRuleArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [virtualNetworkRuleName] The name of the virtual network rule to retrieve.
  GetVirtualNetworkRuleArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkRuleName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkRuleName = pulumi.Input.asInput<String>(virtualNetworkRuleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkRuleName': virtualNetworkRuleName,
    };
  }

  factory GetVirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkRuleArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkRuleName: pulumi.Output.create<String>(map['virtualNetworkRuleName'] as String),
    );
  }
}

