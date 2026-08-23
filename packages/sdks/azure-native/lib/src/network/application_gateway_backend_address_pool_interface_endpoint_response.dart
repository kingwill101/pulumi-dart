// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_response.dart';
import 'network_interface_ipconfiguration_interface_endpoint_response.dart';

/// Backend Address Pool of an application gateway.
class ApplicationGatewayBackendAddressPoolInterfaceEndpointResponse {
  /// Backend addresses
  final pulumi.Input<List<ApplicationGatewayBackendAddressResponse>>? backendAddresses;
  /// Collection of references to IPs defined in network interfaces.
  final pulumi.Input<List<NetworkInterfaceIPConfigurationInterfaceEndpointResponse>>? backendIPConfigurations;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the backend address pool that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Provisioning state of the backend address pool resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String>? provisioningState;
  /// Type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [ApplicationGatewayBackendAddressPoolInterfaceEndpointResponse].
  /// [backendAddresses] Backend addresses
  /// [backendIPConfigurations] Collection of references to IPs defined in network interfaces.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the backend address pool that is unique within an Application Gateway.
  /// [provisioningState] Provisioning state of the backend address pool resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [type] Type of the resource.
  const ApplicationGatewayBackendAddressPoolInterfaceEndpointResponse({
    this.backendAddresses,
    this.backendIPConfigurations,
    this.etag,
    this.id,
    this.name,
    this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddresses': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddressResponse>, List<Map<String, dynamic>>>(backendAddresses, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceIPConfigurationInterfaceEndpointResponse>, List<Map<String, dynamic>>>(backendIPConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfigurationInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'type': ?type,
    };
  }

  factory ApplicationGatewayBackendAddressPoolInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressPoolInterfaceEndpointResponse(
      backendAddresses: (() { final guardedValue = map['backendAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendAddressResponse>(guardedValue, (value) => ApplicationGatewayBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendIPConfigurations: (() { final guardedValue = map['backendIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIPConfigurationInterfaceEndpointResponse>(guardedValue, (value) => NetworkInterfaceIPConfigurationInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
