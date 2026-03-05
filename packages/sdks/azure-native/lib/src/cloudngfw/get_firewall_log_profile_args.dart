// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_firewall_log_profile_args_doc}
/// Arguments for getFirewallLogProfile.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_firewall_log_profile_args_doc}
class GetFirewallLogProfileArgs {
  /// Firewall resource name
  final pulumi.Input<String> firewallName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallLogProfileArgs].
  /// [firewallName] Firewall resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFirewallLogProfileArgs({
    required this.firewallName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallName': firewallName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallLogProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallLogProfileArgs(
      firewallName: pulumi.Input.fromValue(map['firewallName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

