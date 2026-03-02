// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_network_firewall_firewall_policy_args_doc}
/// Arguments for getNetworkFirewallFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_network_firewall_firewall_policy_args_doc}
class GetNetworkFirewallFirewallPolicyArgs {
  /// Name of NetworkFirewallFirewallPolicy
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFirewallFirewallPolicyArgs].
  /// [name] Name of NetworkFirewallFirewallPolicy
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkFirewallFirewallPolicyArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFirewallFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallFirewallPolicyArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

