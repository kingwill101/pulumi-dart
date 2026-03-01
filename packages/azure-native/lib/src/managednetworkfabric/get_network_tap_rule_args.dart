// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_tap_rule_args_doc}
/// Arguments for getNetworkTapRule.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_tap_rule_args_doc}
class GetNetworkTapRuleArgs {
  /// Name of the Network Tap Rule.
  final pulumi.Input<String> networkTapRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkTapRuleArgs].
  /// [networkTapRuleName] Name of the Network Tap Rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkTapRuleArgs({
    required String networkTapRuleName,
    required String resourceGroupName,
  }) :
      networkTapRuleName = pulumi.Input.asInput<String>(networkTapRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTapRuleName': networkTapRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkTapRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkTapRuleArgs(
      networkTapRuleName: map['networkTapRuleName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

