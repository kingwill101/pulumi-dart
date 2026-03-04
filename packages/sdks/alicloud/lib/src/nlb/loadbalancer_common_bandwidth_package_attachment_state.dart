// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadbalancerCommonBandwidthPackageAttachment resources.
class LoadbalancerCommonBandwidthPackageAttachmentState {
  /// Specifies whether only to precheck the request. Valid values:
  final pulumi.Input<String>? bandwidthPackageId;

  /// The ID of the EIP bandwidth plan.
  final pulumi.Input<String>? loadBalancerId;

  /// Network-based load balancing instance status. Value:, indicating that the instance listener will no longer forward traffic.
  final pulumi.Input<String>? status;

  /// Creates a new [LoadbalancerCommonBandwidthPackageAttachmentState].
  /// [bandwidthPackageId] Specifies whether only to precheck the request. Valid values:
  /// [loadBalancerId] The ID of the EIP bandwidth plan.
  /// [status] Network-based load balancing instance status. Value:, indicating that the instance listener will no longer forward traffic.
  LoadbalancerCommonBandwidthPackageAttachmentState({
    this.bandwidthPackageId,
    this.loadBalancerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': ?bandwidthPackageId,
      'loadBalancerId': ?loadBalancerId,
      'status': ?status,
    };
  }

  factory LoadbalancerCommonBandwidthPackageAttachmentState.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadbalancerCommonBandwidthPackageAttachmentState(
      bandwidthPackageId: (() {
        final guardedValue = map['bandwidthPackageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
