// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_azure_firewall_args_doc}
/// Arguments for getAzureFirewall.
/// {@endtemplate}
/// {@macro pulumi_network_get_azure_firewall_args_doc}
class GetAzureFirewallArgs {
  /// The name of the Azure Firewall.
  final pulumi.Input<String> azureFirewallName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureFirewallArgs].
  /// [azureFirewallName] The name of the Azure Firewall.
  /// [resourceGroupName] The name of the resource group.
  GetAzureFirewallArgs({
    required String azureFirewallName,
    required String resourceGroupName,
  }) :
      azureFirewallName = pulumi.Input.asInput<String>(azureFirewallName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFirewallName': azureFirewallName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureFirewallArgs(
      azureFirewallName: map['azureFirewallName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

