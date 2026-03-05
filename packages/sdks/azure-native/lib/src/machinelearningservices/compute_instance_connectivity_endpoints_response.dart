// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines all connectivity endpoints and properties for an ComputeInstance.
class ComputeInstanceConnectivityEndpointsResponse {
  /// Private IP Address of this ComputeInstance (local to the VNET in which the compute instance is deployed).
  final pulumi.Input<String> privateIpAddress;
  /// Public IP Address of this ComputeInstance.
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [ComputeInstanceConnectivityEndpointsResponse].
  /// [privateIpAddress] Private IP Address of this ComputeInstance (local to the VNET in which the compute instance is deployed).
  /// [publicIpAddress] Public IP Address of this ComputeInstance.
  ComputeInstanceConnectivityEndpointsResponse({
    required this.privateIpAddress,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory ComputeInstanceConnectivityEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceConnectivityEndpointsResponse(
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
    );
  }
}

