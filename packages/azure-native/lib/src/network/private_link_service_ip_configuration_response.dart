// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_response.dart';

/// The private link service ip configuration.
class PrivateLinkServiceIpConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of private link service ip configuration.
  final String? name;
  /// Whether the ip configuration is primary or not.
  final bool? primary;
  /// The private IP address of the IP configuration.
  final String? privateIPAddress;
  /// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  final String? privateIPAddressVersion;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// The provisioning state of the private link service IP configuration resource.
  final String provisioningState;
  /// The reference to the subnet resource.
  final SubnetResponse? subnet;
  /// The resource type.
  final String type;

  /// Creates a new [PrivateLinkServiceIpConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of private link service ip configuration.
  /// [primary] Whether the ip configuration is primary or not.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAddressVersion] Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the private link service IP configuration resource.
  /// [subnet] The reference to the subnet resource.
  /// [type] The resource type.
  PrivateLinkServiceIpConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
    };
  }

  factory PrivateLinkServiceIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceIpConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      provisioningState: map['provisioningState'] as String,
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

