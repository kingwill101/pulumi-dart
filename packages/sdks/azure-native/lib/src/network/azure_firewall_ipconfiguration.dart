// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// IP configuration of an Azure Firewall.
class AzureFirewallIPConfiguration {
  /// Resource ID.
  final String? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Reference to the PublicIP resource. This field is a mandatory input if subnet is not null.
  final SubResource? publicIPAddress;
  /// Reference to the subnet resource. This resource must be named 'AzureFirewallSubnet' or 'AzureFirewallManagementSubnet'.
  final SubResource? subnet;

  /// Creates a new [AzureFirewallIPConfiguration].
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [publicIPAddress] Reference to the PublicIP resource. This field is a mandatory input if subnet is not null.
  /// [subnet] Reference to the subnet resource. This resource must be named 'AzureFirewallSubnet' or 'AzureFirewallManagementSubnet'.
  AzureFirewallIPConfiguration({
    this.id,
    this.name,
    this.publicIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory AzureFirewallIPConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureFirewallIPConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResource.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

