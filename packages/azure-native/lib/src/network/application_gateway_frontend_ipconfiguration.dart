// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Frontend IP configuration of an application gateway.
class ApplicationGatewayFrontendIPConfiguration {
  /// Resource ID.
  final String? id;
  /// Name of the frontend IP configuration that is unique within an Application Gateway.
  final String? name;
  /// PrivateIPAddress of the network interface IP Configuration.
  final String? privateIPAddress;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// Reference to the application gateway private link configuration.
  final SubResource? privateLinkConfiguration;
  /// Reference to the PublicIP resource.
  final SubResource? publicIPAddress;
  /// Reference to the subnet resource.
  final SubResource? subnet;

  /// Creates a new [ApplicationGatewayFrontendIPConfiguration].
  /// [id] Resource ID.
  /// [name] Name of the frontend IP configuration that is unique within an Application Gateway.
  /// [privateIPAddress] PrivateIPAddress of the network interface IP Configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [privateLinkConfiguration] Reference to the application gateway private link configuration.
  /// [publicIPAddress] Reference to the PublicIP resource.
  /// [subnet] Reference to the subnet resource.
  ApplicationGatewayFrontendIPConfiguration({
    this.id,
    this.name,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.privateLinkConfiguration,
    this.publicIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'privateLinkConfiguration': ?privateLinkConfiguration == null ? null : privateLinkConfiguration!.toMap(),
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory ApplicationGatewayFrontendIPConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendIPConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : SubResource.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>()),
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResource.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

