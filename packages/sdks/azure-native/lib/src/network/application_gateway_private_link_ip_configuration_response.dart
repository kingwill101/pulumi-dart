// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// The application gateway private link ip configuration.
class ApplicationGatewayPrivateLinkIpConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of application gateway private link ip configuration.
  final String? name;
  /// Whether the ip configuration is primary or not.
  final bool? primary;
  /// The private IP address of the IP configuration.
  final String? privateIPAddress;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// The provisioning state of the application gateway private link IP configuration.
  final String provisioningState;
  /// Reference to the subnet resource.
  final SubResourceResponse? subnet;
  /// The resource type.
  final String type;

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
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
    };
  }

  factory ApplicationGatewayPrivateLinkIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkIpConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      provisioningState: map['provisioningState'] as String,
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

