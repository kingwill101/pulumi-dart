// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// IP configuration of an Azure Firewall.
class AzureFirewallIPConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Reference to the PublicIP resource. This field is a mandatory input if subnet is not null.
  final pulumi.Input<SubResource>? publicIPAddress;
  /// Reference to the subnet resource. This resource must be named 'AzureFirewallSubnet' or 'AzureFirewallManagementSubnet'.
  final pulumi.Input<SubResource>? subnet;

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
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory AzureFirewallIPConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureFirewallIPConfiguration(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicIPAddress: map['publicIPAddress'] == null ? null : (SubResource.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

