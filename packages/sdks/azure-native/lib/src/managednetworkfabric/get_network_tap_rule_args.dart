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
    required this.networkTapRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTapRuleName': networkTapRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkTapRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkTapRuleArgs(
      networkTapRuleName: pulumi.Input.fromValue(
        map['networkTapRuleName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
