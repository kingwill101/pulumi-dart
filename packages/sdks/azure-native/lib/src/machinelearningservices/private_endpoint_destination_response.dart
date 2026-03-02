// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
class PrivateEndpointDestinationResponse {
  final pulumi.Input<String>? serviceResourceId;
  final pulumi.Input<bool>? sparkEnabled;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? sparkStatus;
  final pulumi.Input<String>? subresourceTarget;

  /// Creates a new [PrivateEndpointDestinationResponse].
  /// [serviceResourceId] Optional.
  /// [sparkEnabled] Optional.
  /// [sparkStatus] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [subresourceTarget] Optional.
  PrivateEndpointDestinationResponse({
    this.serviceResourceId,
    this.sparkEnabled,
    this.sparkStatus,
    this.subresourceTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceResourceId': ?serviceResourceId,
      'sparkEnabled': ?sparkEnabled,
      'sparkStatus': ?sparkStatus,
      'subresourceTarget': ?subresourceTarget,
    };
  }

  factory PrivateEndpointDestinationResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointDestinationResponse(
      serviceResourceId: map['serviceResourceId'] == null ? null : (map['serviceResourceId']! as String).input(),
      sparkEnabled: map['sparkEnabled'] == null ? null : (map['sparkEnabled']! as bool).input(),
      sparkStatus: map['sparkStatus'] == null ? null : (map['sparkStatus']! as String).input(),
      subresourceTarget: map['subresourceTarget'] == null ? null : (map['subresourceTarget']! as String).input(),
    );
  }
}

