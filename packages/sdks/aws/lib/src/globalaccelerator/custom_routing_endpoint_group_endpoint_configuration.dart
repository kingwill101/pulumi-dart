// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingEndpointGroupEndpointConfiguration {
  /// ID for the endpoint. For custom routing accelerators, this is the VPC subnet ID.
  final pulumi.Input<String?>? endpointId;

  /// Creates a new [CustomRoutingEndpointGroupEndpointConfiguration].
  /// [endpointId] ID for the endpoint. For custom routing accelerators, this is the VPC subnet ID.
  const CustomRoutingEndpointGroupEndpointConfiguration({
    this.endpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
    };
  }

  factory CustomRoutingEndpointGroupEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupEndpointConfiguration(
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
