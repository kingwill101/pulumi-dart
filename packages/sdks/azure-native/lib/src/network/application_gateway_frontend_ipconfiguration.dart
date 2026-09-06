// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Frontend IP configuration of an application gateway.
class ApplicationGatewayFrontendIPConfiguration {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Name of the frontend IP configuration that is unique within an Application Gateway.
  final pulumi.Input<String?>? name;
  /// PrivateIPAddress of the network interface IP Configuration.
  final pulumi.Input<String?>? privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<dynamic>? privateIPAllocationMethod;
  /// Reference to the application gateway private link configuration.
  final pulumi.Input<SubResource?>? privateLinkConfiguration;
  /// Reference to the PublicIP resource.
  final pulumi.Input<SubResource?>? publicIPAddress;
  /// Reference to the subnet resource.
  final pulumi.Input<SubResource?>? subnet;

  /// Creates a new [ApplicationGatewayFrontendIPConfiguration].
  /// [id] Resource ID.
  /// [name] Name of the frontend IP configuration that is unique within an Application Gateway.
  /// [privateIPAddress] PrivateIPAddress of the network interface IP Configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [privateLinkConfiguration] Reference to the application gateway private link configuration.
  /// [publicIPAddress] Reference to the PublicIP resource.
  /// [subnet] Reference to the subnet resource.
  const ApplicationGatewayFrontendIPConfiguration({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      privateLinkConfiguration: (() { final guardedValue = map['privateLinkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
