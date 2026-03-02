// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_bandwidth_limit_bandwidth_limit_args_doc}
/// The set of arguments for BandwidthLimit.
/// {@endtemplate}
/// {@macro pulumi_cen_bandwidth_limit_bandwidth_limit_args_doc}
class BandwidthLimitArgs {
  /// The bandwidth configured for the interconnected regions communication.
  ///
  /// ->**NOTE:** The `alicloud.cen.BandwidthLimit` resource depends on the related "alicloud.cen.BandwidthPackageAttachment" resource and "alicloud.cen.InstanceAttachment" resource.
  final pulumi.Input<int> bandwidthLimit;
  /// The ID of the CEN.
  final pulumi.Input<String> instanceId;
  /// List of the two regions to interconnect. Must be two different regions.
  final pulumi.Input<List<String>> regionIds;

  /// Creates a new [BandwidthLimitArgs].
  /// [bandwidthLimit] The bandwidth configured for the interconnected regions communication.
  /// [instanceId] The ID of the CEN.
  /// [regionIds] List of the two regions to interconnect. Must be two different regions.
  BandwidthLimitArgs({
    required this.bandwidthLimit,
    required this.instanceId,
    required this.regionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': bandwidthLimit,
      'instanceId': instanceId,
      'regionIds': regionIds,
    };
  }

  factory BandwidthLimitArgs.fromMap(Map<String, dynamic> map) {
    return BandwidthLimitArgs(
      bandwidthLimit: (map['bandwidthLimit'] as int).input(),
      instanceId: (map['instanceId'] as String).input(),
      regionIds: ((map['regionIds'] as List).cast<String>()).input(),
    );
  }
}

