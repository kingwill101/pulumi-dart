// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Frontend IP configuration of an application gateway.
class ApplicationGatewayFrontendIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the frontend IP configuration that is unique within an Application Gateway.
  final String? name;
  /// PrivateIPAddress of the network interface IP Configuration.
  final String? privateIPAddress;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// Reference to the application gateway private link configuration.
  final SubResourceResponse? privateLinkConfiguration;
  /// The provisioning state of the frontend IP configuration resource.
  final String provisioningState;
  /// Reference to the PublicIP resource.
  final SubResourceResponse? publicIPAddress;
  /// Reference to the subnet resource.
  final SubResourceResponse? subnet;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayFrontendIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the frontend IP configuration that is unique within an Application Gateway.
  /// [privateIPAddress] PrivateIPAddress of the network interface IP Configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [privateLinkConfiguration] Reference to the application gateway private link configuration.
  /// [provisioningState] The provisioning state of the frontend IP configuration resource.
  /// [publicIPAddress] Reference to the PublicIP resource.
  /// [subnet] Reference to the subnet resource.
  /// [type] Type of the resource.
  ApplicationGatewayFrontendIPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.privateLinkConfiguration,
    required this.provisioningState,
    this.publicIPAddress,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'privateLinkConfiguration': ?privateLinkConfiguration == null ? null : privateLinkConfiguration!.toMap(),
      'provisioningState': provisioningState,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
    };
  }

  factory ApplicationGatewayFrontendIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendIPConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : SubResourceResponse.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResourceResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

