// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Frontend IP configuration of an application gateway.
class ApplicationGatewayFrontendIPConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the frontend IP configuration that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// PrivateIPAddress of the network interface IP Configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// Reference to the application gateway private link configuration.
  final pulumi.Input<SubResource>? privateLinkConfiguration;
  /// Reference to the PublicIP resource.
  final pulumi.Input<SubResource>? publicIPAddress;
  /// Reference to the subnet resource.
  final pulumi.Input<SubResource>? subnet;

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
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayFrontendIPConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendIPConfiguration(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress'] as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod'] as String).input(),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : (SubResource.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      publicIPAddress: map['publicIPAddress'] == null ? null : (SubResource.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

