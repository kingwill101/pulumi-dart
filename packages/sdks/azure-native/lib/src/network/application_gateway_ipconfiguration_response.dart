// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// IP configuration of an application gateway. Currently 1 public and 1 private IP configuration is allowed.
class ApplicationGatewayIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the IP configuration that is unique within an Application Gateway.
  final String? name;
  /// The provisioning state of the application gateway IP configuration resource.
  final String provisioningState;
  /// Reference to the subnet resource. A subnet from where application gateway gets its private address.
  final SubResourceResponse? subnet;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the IP configuration that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the application gateway IP configuration resource.
  /// [subnet] Reference to the subnet resource. A subnet from where application gateway gets its private address.
  /// [type] Type of the resource.
  ApplicationGatewayIPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
    };
  }

  factory ApplicationGatewayIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayIPConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

