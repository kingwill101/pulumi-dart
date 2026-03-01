// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// IP configuration of an Bastion Host.
class BastionHostIPConfiguration {
  /// Resource ID.
  final String? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Private IP allocation method.
  final String? privateIPAllocationMethod;
  /// Reference of the PublicIP resource. Null for private only bastion
  final SubResource? publicIPAddress;
  /// Reference of the subnet resource.
  final SubResource subnet;

  /// Creates a new [BastionHostIPConfiguration].
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateIPAllocationMethod] Private IP allocation method.
  /// [publicIPAddress] Reference of the PublicIP resource. Null for private only bastion
  /// [subnet] Reference of the subnet resource.
  BastionHostIPConfiguration({
    this.id,
    this.name,
    this.privateIPAllocationMethod,
    this.publicIPAddress,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': subnet.toMap(),
    };
  }

  factory BastionHostIPConfiguration.fromMap(Map<String, dynamic> map) {
    return BastionHostIPConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResource.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

