// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The PE network resource that is linked to this PE connection.
class PrivateEndpointResourceResponse {
  /// The ARM identifier for Private Endpoint
  final pulumi.Input<String> id;
  /// The subnetId that the private endpoint is connected to.
  final pulumi.Input<String>? subnetArmId;

  /// Creates a new [PrivateEndpointResourceResponse].
  /// [id] The ARM identifier for Private Endpoint
  /// [subnetArmId] The subnetId that the private endpoint is connected to.
  PrivateEndpointResourceResponse({
    required this.id,
    this.subnetArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subnetArmId': ?subnetArmId,
    };
  }

  factory PrivateEndpointResourceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResourceResponse(
      id: (map['id'] as String).input(),
      subnetArmId: map['subnetArmId'] == null ? null : (map['subnetArmId']! as String).input(),
    );
  }
}

