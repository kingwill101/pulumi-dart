// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_firewall_support_info_args_doc}
/// Arguments for getFirewallSupportInfo.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_firewall_support_info_args_doc}
class GetFirewallSupportInfoArgs {
  /// email address on behalf of which this API called
  final pulumi.Input<String?>? email;
  /// Firewall resource name
  final pulumi.Input<String> firewallName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallSupportInfoArgs].
  /// [email] email address on behalf of which this API called
  /// [firewallName] Firewall resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetFirewallSupportInfoArgs({
    this.email,
    required this.firewallName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'firewallName': firewallName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallSupportInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallSupportInfoArgs(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallName: pulumi.Input.fromValue(map['firewallName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
