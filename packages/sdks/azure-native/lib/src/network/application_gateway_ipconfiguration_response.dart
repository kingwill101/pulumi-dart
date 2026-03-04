// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// IP configuration of an application gateway. Currently 1 public and 1 private IP configuration is allowed.
class ApplicationGatewayIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Name of the IP configuration that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// The provisioning state of the application gateway IP configuration resource.
  final pulumi.Input<String> provisioningState;

  /// Reference to the subnet resource. A subnet from where application gateway gets its private address.
  final pulumi.Input<SubResourceResponse>? subnet;

  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'subnet':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewayIPConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayIPConfigurationResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
