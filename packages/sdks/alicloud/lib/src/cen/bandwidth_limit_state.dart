// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BandwidthLimit resources.
class BandwidthLimitState {
  /// The bandwidth configured for the interconnected regions communication.
  ///
  /// -&gt;**NOTE:** The `alicloud.cen.BandwidthLimit` resource depends on the related "alicloud.cen.BandwidthPackageAttachment" resource and "alicloud.cen.InstanceAttachment" resource.
  final pulumi.Input<int>? bandwidthLimit;

  /// The ID of the CEN.
  final pulumi.Input<String>? instanceId;

  /// List of the two regions to interconnect. Must be two different regions.
  final pulumi.Input<List<String>>? regionIds;

  /// Creates a new [BandwidthLimitState].
  /// [bandwidthLimit] The bandwidth configured for the interconnected regions communication.
  /// [instanceId] The ID of the CEN.
  /// [regionIds] List of the two regions to interconnect. Must be two different regions.
  BandwidthLimitState({this.bandwidthLimit, this.instanceId, this.regionIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': ?bandwidthLimit,
      'instanceId': ?instanceId,
      'regionIds': ?regionIds,
    };
  }

  factory BandwidthLimitState.fromMap(Map<String, dynamic> map) {
    return BandwidthLimitState(
      bandwidthLimit: (() {
        final guardedValue = map['bandwidthLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionIds: (() {
        final guardedValue = map['regionIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
