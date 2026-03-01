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
    pulumi.Output<String>? bandwidthPackageId,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? status,
  }) :
      bandwidthPackageId = pulumi.Input.asOptionalInput<String>(bandwidthPackageId),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': ?bandwidthPackageId,
      'loadBalancerId': ?loadBalancerId,
      'status': ?status,
    };
  }

  factory LoadbalancerCommonBandwidthPackageAttachmentState.fromMap(Map<String, dynamic> map) {
    return LoadbalancerCommonBandwidthPackageAttachmentState(
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : pulumi.Output.create<String>(map['bandwidthPackageId'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

