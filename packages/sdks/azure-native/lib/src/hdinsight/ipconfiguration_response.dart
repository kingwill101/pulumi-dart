// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';

/// The ip configurations for the private link service.
class IPConfigurationResponse {
  /// The private link IP configuration id.
  final pulumi.Input<String> id;
  /// The name of private link IP configuration.
  final pulumi.Input<String> name;
  /// Indicates whether this IP configuration is primary for the corresponding NIC.
  final pulumi.Input<bool>? primary;
  /// The IP address.
  final pulumi.Input<String>? privateIPAddress;
  /// The method that private IP address is allocated.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The private link configuration provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;
  /// The subnet resource id.
  final pulumi.Input<ResourceIdResponse>? subnet;
  /// The type of the private link IP configuration.
  final pulumi.Input<String> type;

  /// Creates a new [IPConfigurationResponse].
  /// [id] The private link IP configuration id.
  /// [name] The name of private link IP configuration.
  /// [primary] Indicates whether this IP configuration is primary for the corresponding NIC.
  /// [privateIPAddress] The IP address.
  /// [privateIPAllocationMethod] The method that private IP address is allocated.
  /// [provisioningState] The private link configuration provisioning state, which only appears in the response.
  /// [subnet] The subnet resource id.
  /// [type] The type of the private link IP configuration.
  IPConfigurationResponse({
    required this.id,
    required this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'subnet': ?pulumi.Input.mapOptionalInputValue<ResourceIdResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory IPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationResponse(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress']! as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      subnet: map['subnet'] == null ? null : (ResourceIdResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

