// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_loadbalancer_common_bandwidth_package_attachment_loadbalancer_common_bandwidth_package_attachment_args_doc}
/// The set of arguments for LoadbalancerCommonBandwidthPackageAttachment.
/// {@endtemplate}
/// {@macro pulumi_nlb_loadbalancer_common_bandwidth_package_attachment_loadbalancer_common_bandwidth_package_attachment_args_doc}
class LoadbalancerCommonBandwidthPackageAttachmentArgs {
  /// Specifies whether only to precheck the request. Valid values:
  final pulumi.Input<String> bandwidthPackageId;

  /// The ID of the EIP bandwidth plan.
  final pulumi.Input<String> loadBalancerId;

  /// Creates a new [LoadbalancerCommonBandwidthPackageAttachmentArgs].
  /// [bandwidthPackageId] Specifies whether only to precheck the request. Valid values:
  /// [loadBalancerId] The ID of the EIP bandwidth plan.
  LoadbalancerCommonBandwidthPackageAttachmentArgs({
    required this.bandwidthPackageId,
    required this.loadBalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': bandwidthPackageId,
      'loadBalancerId': loadBalancerId,
    };
  }

  factory LoadbalancerCommonBandwidthPackageAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadbalancerCommonBandwidthPackageAttachmentArgs(
      bandwidthPackageId: pulumi.Input.fromValue(
        map['bandwidthPackageId'] as String,
      ),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
    );
  }
}
