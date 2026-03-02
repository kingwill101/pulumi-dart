// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_common_bandwith_package_attachment_common_bandwith_package_attachment_args_doc}
/// The set of arguments for CommonBandwithPackageAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_common_bandwith_package_attachment_common_bandwith_package_attachment_args_doc}
class CommonBandwithPackageAttachmentArgs {
  /// The maximum bandwidth for the EIP. This value cannot be larger than the maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// > **NOTE:**  From version 1.261.0, If you want to cancel the maximum bandwidth configuration for the EIP, you can set `bandwidth_package_bandwidth` to `Cancelled`.
  final pulumi.Input<String>? bandwidthPackageBandwidth;
  /// The ID of the Internet Shared Bandwidth instance.
  final pulumi.Input<String> bandwidthPackageId;
  /// . Field `cancel_common_bandwidth_package_ip_bandwidth` has been deprecated from provider version 1.261.0. Replace with `bandwidth_package_bandwidth` = `"Cancelled"`.
  final pulumi.Input<bool>? cancelCommonBandwidthPackageIpBandwidth;
  /// The ID of the EIP that you want to query.
  ///
  /// You can specify up to 50 EIP IDs. Separate multiple IDs with commas (,).
  ///
  /// > **NOTE:** If both `EipAddress` and `AllocationId` are specified, you can specify up to 50 EIP IDs for `AllocationId`, and specify up to 50 EIPs for `EipAddress`.
  final pulumi.Input<String> instanceId;
  /// The type of IP address. Set the value to `EIP` to associate EIPs with the Internet Shared Bandwidth instance.
  final pulumi.Input<String>? ipType;

  /// Creates a new [CommonBandwithPackageAttachmentArgs].
  /// [bandwidthPackageBandwidth] The maximum bandwidth for the EIP. This value cannot be larger than the maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// [bandwidthPackageId] The ID of the Internet Shared Bandwidth instance.
  /// [cancelCommonBandwidthPackageIpBandwidth] . Field `cancel_common_bandwidth_package_ip_bandwidth` has been deprecated from provider version 1.261.0. Replace with `bandwidth_package_bandwidth` = `"Cancelled"`.
  /// [instanceId] The ID of the EIP that you want to query.
  /// [ipType] The type of IP address. Set the value to `EIP` to associate EIPs with the Internet Shared Bandwidth instance.
  CommonBandwithPackageAttachmentArgs({
    this.bandwidthPackageBandwidth,
    required this.bandwidthPackageId,
    this.cancelCommonBandwidthPackageIpBandwidth,
    required this.instanceId,
    this.ipType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageBandwidth': ?bandwidthPackageBandwidth,
      'bandwidthPackageId': bandwidthPackageId,
      'cancelCommonBandwidthPackageIpBandwidth': ?cancelCommonBandwidthPackageIpBandwidth,
      'instanceId': instanceId,
      'ipType': ?ipType,
    };
  }

  factory CommonBandwithPackageAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return CommonBandwithPackageAttachmentArgs(
      bandwidthPackageBandwidth: map['bandwidthPackageBandwidth'] == null ? null : (map['bandwidthPackageBandwidth'] as String).input(),
      bandwidthPackageId: (map['bandwidthPackageId'] as String).input(),
      cancelCommonBandwidthPackageIpBandwidth: map['cancelCommonBandwidthPackageIpBandwidth'] == null ? null : (map['cancelCommonBandwidthPackageIpBandwidth'] as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      ipType: map['ipType'] == null ? null : (map['ipType'] as String).input(),
    );
  }
}

