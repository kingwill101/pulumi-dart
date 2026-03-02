// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// The application gateway private link ip configuration.
class ApplicationGatewayPrivateLinkIpConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
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
  /// The provisioning state of the application gateway private link IP configuration.
  final pulumi.Input<String> provisioningState;
  /// Reference to the subnet resource.
  final pulumi.Input<SubResourceResponse>? subnet;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayPrivateLinkIpConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of application gateway private link ip configuration.
  /// [primary] Whether the ip configuration is primary or not.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the application gateway private link IP configuration.
  /// [subnet] Reference to the subnet resource.
  /// [type] The resource type.
  ApplicationGatewayPrivateLinkIpConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    this.primary,
    this.privateIPAddress,
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
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewayPrivateLinkIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkIpConfigurationResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress']! as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      subnet: map['subnet'] == null ? null : (SubResourceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

