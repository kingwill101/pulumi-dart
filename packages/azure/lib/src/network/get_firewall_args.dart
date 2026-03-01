// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_firewall_get_firewall_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_network_get_firewall_get_firewall_args_doc}
class GetFirewallArgs {
  /// Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when it is `true`.
  final pulumi.Input<bool>? dnsProxyEnabled;
  /// The name of the Azure Firewall.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Azure Firewall exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallArgs].
  /// [dnsProxyEnabled] Whether DNS proxy is enabled. It will forward DNS requests to the DNS servers when it is `true`.
  /// [name] The name of the Azure Firewall.
  /// [resourceGroupName] The name of the Resource Group in which the Azure Firewall exists.
  GetFirewallArgs({
    bool? dnsProxyEnabled,
    required String name,
    required String resourceGroupName,
  }) :
      dnsProxyEnabled = pulumi.Input.asOptionalInput<bool>(dnsProxyEnabled),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsProxyEnabled': ?dnsProxyEnabled,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(
      dnsProxyEnabled: map['dnsProxyEnabled'] == null ? null : map['dnsProxyEnabled'] as bool,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

