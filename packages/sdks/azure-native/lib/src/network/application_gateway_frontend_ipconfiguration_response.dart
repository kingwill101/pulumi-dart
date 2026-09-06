// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Frontend IP configuration of an application gateway.
class ApplicationGatewayFrontendIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Name of the frontend IP configuration that is unique within an Application Gateway.
  final pulumi.Input<String?>? name;
  /// PrivateIPAddress of the network interface IP Configuration.
  final pulumi.Input<String?>? privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<String?>? privateIPAllocationMethod;
  /// Reference to the application gateway private link configuration.
  final pulumi.Input<SubResourceResponse?>? privateLinkConfiguration;
  /// The provisioning state of the frontend IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Reference to the PublicIP resource.
  final pulumi.Input<SubResourceResponse?>? publicIPAddress;
  /// Reference to the subnet resource.
  final pulumi.Input<SubResourceResponse?>? subnet;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
  const ApplicationGatewayFrontendIPConfigurationResponse({
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
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewayFrontendIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendIPConfigurationResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkConfiguration: (() { final guardedValue = map['privateLinkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
