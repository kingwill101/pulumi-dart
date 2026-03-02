// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CommonBandwithPackageAttachment resources.
class CommonBandwithPackageAttachmentState {
  /// The maximum bandwidth for the EIP. This value cannot be larger than the maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// > **NOTE:**  From version 1.261.0, If you want to cancel the maximum bandwidth configuration for the EIP, you can set `bandwidth_package_bandwidth` to `Cancelled`.
  final pulumi.Input<String>? bandwidthPackageBandwidth;
  /// The ID of the Internet Shared Bandwidth instance.
  final pulumi.Input<String>? bandwidthPackageId;
  /// . Field `cancel_common_bandwidth_package_ip_bandwidth` has been deprecated from provider version 1.261.0. Replace with `bandwidth_package_bandwidth` = `"Cancelled"`.
  final pulumi.Input<bool>? cancelCommonBandwidthPackageIpBandwidth;
  /// The ID of the EIP that you want to query.
  ///
  /// You can specify up to 50 EIP IDs. Separate multiple IDs with commas (,).
  ///
  /// > **NOTE:** If both `EipAddress` and `AllocationId` are specified, you can specify up to 50 EIP IDs for `AllocationId`, and specify up to 50 EIPs for `EipAddress`.
  final pulumi.Input<String>? instanceId;
  /// The type of IP address. Set the value to `EIP` to associate EIPs with the Internet Shared Bandwidth instance.
  final pulumi.Input<String>? ipType;
  /// The status of the Internet Shared Bandwidth instance.
  final pulumi.Input<String>? status;

  /// Creates a new [CommonBandwithPackageAttachmentState].
  /// [bandwidthPackageBandwidth] The maximum bandwidth for the EIP. This value cannot be larger than the maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// [bandwidthPackageId] The ID of the Internet Shared Bandwidth instance.
  /// [cancelCommonBandwidthPackageIpBandwidth] . Field `cancel_common_bandwidth_package_ip_bandwidth` has been deprecated from provider version 1.261.0. Replace with `bandwidth_package_bandwidth` = `"Cancelled"`.
  /// [instanceId] The ID of the EIP that you want to query.
  /// [ipType] The type of IP address. Set the value to `EIP` to associate EIPs with the Internet Shared Bandwidth instance.
  /// [status] The status of the Internet Shared Bandwidth instance.
  CommonBandwithPackageAttachmentState({
    this.bandwidthPackageBandwidth,
    this.bandwidthPackageId,
    this.cancelCommonBandwidthPackageIpBandwidth,
    this.instanceId,
    this.ipType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageBandwidth': ?bandwidthPackageBandwidth,
      'bandwidthPackageId': ?bandwidthPackageId,
      'cancelCommonBandwidthPackageIpBandwidth': ?cancelCommonBandwidthPackageIpBandwidth,
      'instanceId': ?instanceId,
      'ipType': ?ipType,
      'status': ?status,
    };
  }

  factory CommonBandwithPackageAttachmentState.fromMap(Map<String, dynamic> map) {
    return CommonBandwithPackageAttachmentState(
      bandwidthPackageBandwidth: map['bandwidthPackageBandwidth'] == null ? null : (map['bandwidthPackageBandwidth'] as String).input(),
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : (map['bandwidthPackageId'] as String).input(),
      cancelCommonBandwidthPackageIpBandwidth: map['cancelCommonBandwidthPackageIpBandwidth'] == null ? null : (map['cancelCommonBandwidthPackageIpBandwidth'] as bool).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      ipType: map['ipType'] == null ? null : (map['ipType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

