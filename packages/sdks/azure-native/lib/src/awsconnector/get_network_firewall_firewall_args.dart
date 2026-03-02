// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_network_firewall_firewall_args_doc}
/// Arguments for getNetworkFirewallFirewall.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_network_firewall_firewall_args_doc}
class GetNetworkFirewallFirewallArgs {
  /// Name of NetworkFirewallFirewall
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFirewallFirewallArgs].
  /// [name] Name of NetworkFirewallFirewall
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkFirewallFirewallArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFirewallFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallFirewallArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

