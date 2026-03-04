// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_load_balancer_common_bandwidth_package_attachment_load_balancer_common_bandwidth_package_attachment_args_doc}
/// The set of arguments for LoadBalancerCommonBandwidthPackageAttachment.
/// {@endtemplate}
/// {@macro pulumi_alb_load_balancer_common_bandwidth_package_attachment_load_balancer_common_bandwidth_package_attachment_args_doc}
class LoadBalancerCommonBandwidthPackageAttachmentArgs {
  /// The ID of the bound shared bandwidth package.
  final pulumi.Input<String> bandwidthPackageId;

  /// Whether to PreCheck this request only. Value:-**true**: sends a check request and does not bind the shared bandwidth package to the load balancing instance. Check items include whether required parameters, request format, and business restrictions have been filled in. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns the HTTP 2xx status code after the check, and directly performs the operation.
  final pulumi.Input<bool>? dryRun;

  /// The ID of the applied server load balancer instance.
  final pulumi.Input<String> loadBalancerId;

  /// Creates a new [LoadBalancerCommonBandwidthPackageAttachmentArgs].
  /// [bandwidthPackageId] The ID of the bound shared bandwidth package.
  /// [dryRun] Whether to PreCheck this request only. Value:-**true**: sends a check request and does not bind the shared bandwidth package to the load balancing instance. Check items include whether required parameters, request format, and business restrictions have been filled in. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns the HTTP 2xx status code after the check, and directly performs the operation.
  /// [loadBalancerId] The ID of the applied server load balancer instance.
  LoadBalancerCommonBandwidthPackageAttachmentArgs({
    required this.bandwidthPackageId,
    this.dryRun,
    required this.loadBalancerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': bandwidthPackageId,
      'dryRun': ?dryRun,
      'loadBalancerId': loadBalancerId,
    };
  }

  factory LoadBalancerCommonBandwidthPackageAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerCommonBandwidthPackageAttachmentArgs(
      bandwidthPackageId: pulumi.Input.fromValue(
        map['bandwidthPackageId'] as String,
      ),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
    );
  }
}
