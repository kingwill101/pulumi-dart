// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerCommonBandwidthPackageAttachment resources.
class LoadBalancerCommonBandwidthPackageAttachmentState {
  /// The ID of the bound shared bandwidth package.
  final pulumi.Input<String>? bandwidthPackageId;
  /// Whether to PreCheck this request only. Value:-**true**: sends a check request and does not bind the shared bandwidth package to the load balancing instance. Check items include whether required parameters, request format, and business restrictions have been filled in. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns the HTTP 2xx status code after the check, and directly performs the operation.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the applied server load balancer instance.
  final pulumi.Input<String>? loadBalancerId;
  /// The status of the Application Load balancing instance. Value:-**Inactive**: Stopped, indicating that the instance listener will no longer forward traffic.-**Active**: running.-**Provisioning**: The project is being created.-**Configuring**: The configuration is being changed.-**CreateFailed**: The instance cannot be deleted without any charge.
  final pulumi.Input<String>? status;

  /// Creates a new [LoadBalancerCommonBandwidthPackageAttachmentState].
  /// [bandwidthPackageId] The ID of the bound shared bandwidth package.
  /// [dryRun] Whether to PreCheck this request only. Value:-**true**: sends a check request and does not bind the shared bandwidth package to the load balancing instance. Check items include whether required parameters, request format, and business restrictions have been filled in. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.-**false** (default): Sends a normal request, returns the HTTP 2xx status code after the check, and directly performs the operation.
  /// [loadBalancerId] The ID of the applied server load balancer instance.
  /// [status] The status of the Application Load balancing instance. Value:-**Inactive**: Stopped, indicating that the instance listener will no longer forward traffic.-**Active**: running.-**Provisioning**: The project is being created.-**Configuring**: The configuration is being changed.-**CreateFailed**: The instance cannot be deleted without any charge.
  LoadBalancerCommonBandwidthPackageAttachmentState({
    pulumi.Output<String>? bandwidthPackageId,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? status,
  }) :
      bandwidthPackageId = pulumi.Input.asOptionalInput<String>(bandwidthPackageId),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': ?bandwidthPackageId,
      'dryRun': ?dryRun,
      'loadBalancerId': ?loadBalancerId,
      'status': ?status,
    };
  }

  factory LoadBalancerCommonBandwidthPackageAttachmentState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerCommonBandwidthPackageAttachmentState(
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : pulumi.Output.create<String>(map['bandwidthPackageId'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

