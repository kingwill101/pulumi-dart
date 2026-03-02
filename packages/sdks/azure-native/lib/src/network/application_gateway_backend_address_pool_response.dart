// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_response.dart';
import 'network_interface_ipconfiguration_response.dart';

/// Backend Address Pool of an application gateway.
class ApplicationGatewayBackendAddressPoolResponse {
  /// Backend addresses.
  final pulumi.Input<List<ApplicationGatewayBackendAddressResponse>>? backendAddresses;
  /// Collection of references to IPs defined in network interfaces.
  final pulumi.Input<List<NetworkInterfaceIPConfigurationResponse>> backendIPConfigurations;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the backend address pool that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the backend address pool resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayBackendAddressPoolResponse].
  /// [backendAddresses] Backend addresses.
  /// [backendIPConfigurations] Collection of references to IPs defined in network interfaces.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the backend address pool that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the backend address pool resource.
  /// [type] Type of the resource.
  ApplicationGatewayBackendAddressPoolResponse({
    this.backendAddresses,
    required this.backendIPConfigurations,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddresses': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddressResponse>, List<Map<String, dynamic>>>(backendAddresses, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendIPConfigurations': pulumi.Input.mapInputValue<List<NetworkInterfaceIPConfigurationResponse>, List<Map<String, dynamic>>>(backendIPConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayBackendAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressPoolResponse(
      backendAddresses: map['backendAddresses'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendAddressResponse>(map['backendAddresses']!, (value) => ApplicationGatewayBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backendIPConfigurations: (pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(map['backendIPConfigurations'], (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

