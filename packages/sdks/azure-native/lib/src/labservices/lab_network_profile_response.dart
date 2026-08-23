// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile for how to handle networking for Labs.
class LabNetworkProfileResponse {
  /// The external load balancer resource id
  final pulumi.Input<String>? loadBalancerId;
  /// The external public IP resource id
  final pulumi.Input<String>? publicIpId;
  /// The external subnet resource id
  final pulumi.Input<String>? subnetId;

  /// Creates a new [LabNetworkProfileResponse].
  /// [loadBalancerId] The external load balancer resource id
  /// [publicIpId] The external public IP resource id
  /// [subnetId] The external subnet resource id
  const LabNetworkProfileResponse({
    this.loadBalancerId,
    this.publicIpId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': ?loadBalancerId,
      'publicIpId': ?publicIpId,
      'subnetId': ?subnetId,
    };
  }

  factory LabNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return LabNetworkProfileResponse(
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpId: (() { final guardedValue = map['publicIpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
