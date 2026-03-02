// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// The application gateway private link ip configuration.
class ApplicationGatewayPrivateLinkIpConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of application gateway private link ip configuration.
  final pulumi.Input<String>? name;
  /// Whether the ip configuration is primary or not.
  final pulumi.Input<bool>? primary;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// Reference to the subnet resource.
  final pulumi.Input<SubResource>? subnet;

  /// Creates a new [ApplicationGatewayPrivateLinkIpConfiguration].
  /// [id] Resource ID.
  /// [name] The name of application gateway private link ip configuration.
  /// [primary] Whether the ip configuration is primary or not.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [subnet] Reference to the subnet resource.
  ApplicationGatewayPrivateLinkIpConfiguration({
    this.id,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayPrivateLinkIpConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkIpConfiguration(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress'] as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod'] as String).input(),
      subnet: map['subnet'] == null ? null : (SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

