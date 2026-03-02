// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingEndpointGroupEndpointConfiguration {
  /// An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.
  final pulumi.Input<String>? endpointId;

  /// Creates a new [CustomRoutingEndpointGroupEndpointConfiguration].
  /// [endpointId] An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.
  CustomRoutingEndpointGroupEndpointConfiguration({
    this.endpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
    };
  }

  factory CustomRoutingEndpointGroupEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupEndpointConfiguration(
      endpointId: map['endpointId'] == null ? null : ((map['endpointId'] as String).input()).input(),
    );
  }
}

