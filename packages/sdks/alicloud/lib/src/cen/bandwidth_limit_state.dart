// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BandwidthLimit resources.
class BandwidthLimitState {
  /// The bandwidth configured for the interconnected regions communication.
  ///
  /// ->**NOTE:** The `alicloud.cen.BandwidthLimit` resource depends on the related "alicloud.cen.BandwidthPackageAttachment" resource and "alicloud.cen.InstanceAttachment" resource.
  final pulumi.Input<int>? bandwidthLimit;
  /// The ID of the CEN.
  final pulumi.Input<String>? instanceId;
  /// List of the two regions to interconnect. Must be two different regions.
  final pulumi.Input<List<String>>? regionIds;

  /// Creates a new [BandwidthLimitState].
  /// [bandwidthLimit] The bandwidth configured for the interconnected regions communication.
  /// [instanceId] The ID of the CEN.
  /// [regionIds] List of the two regions to interconnect. Must be two different regions.
  BandwidthLimitState({
    pulumi.Output<int>? bandwidthLimit,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<String>>? regionIds,
  }) :
      bandwidthLimit = pulumi.Input.asOptionalInput<int>(bandwidthLimit),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      regionIds = pulumi.Input.asOptionalInput<List<String>>(regionIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': ?bandwidthLimit,
      'instanceId': ?instanceId,
      'regionIds': ?regionIds,
    };
  }

  factory BandwidthLimitState.fromMap(Map<String, dynamic> map) {
    return BandwidthLimitState(
      bandwidthLimit: map['bandwidthLimit'] == null ? null : pulumi.Output.create<int>(map['bandwidthLimit'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      regionIds: map['regionIds'] == null ? null : pulumi.Output.create<List<String>>((map['regionIds'] as List).cast<String>()),
    );
  }
}

