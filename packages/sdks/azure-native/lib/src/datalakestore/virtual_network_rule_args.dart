// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakestore_virtual_network_rule_args_doc}
/// The set of arguments for VirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_datalakestore_virtual_network_rule_args_doc}
class VirtualNetworkRuleArgs {
  /// The name of the Data Lake Store account.
  final pulumi.Input<String> accountName;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The resource identifier for the subnet.
  final pulumi.Input<String> subnetId;
  /// The name of the virtual network rule to create or update.
  final pulumi.Input<String>? virtualNetworkRuleName;

  /// Creates a new [VirtualNetworkRuleArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [subnetId] The resource identifier for the subnet.
  /// [virtualNetworkRuleName] The name of the virtual network rule to create or update.
  VirtualNetworkRuleArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> subnetId,
    pulumi.Output<String>? virtualNetworkRuleName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      virtualNetworkRuleName = pulumi.Input.asOptionalInput<String>(virtualNetworkRuleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'subnetId': subnetId,
      'virtualNetworkRuleName': ?virtualNetworkRuleName,
    };
  }

  factory VirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
      virtualNetworkRuleName: map['virtualNetworkRuleName'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkRuleName'] as String),
    );
  }
}

