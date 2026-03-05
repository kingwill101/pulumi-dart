// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBandwidthLimitsLimit {
  /// The bandwidth limit configured for the interconnected regions communication.
  final pulumi.Input<int> bandwidthLimit;
  /// ID of the CEN instance.
  final pulumi.Input<String> instanceId;
  /// ID of local region.
  final pulumi.Input<String> localRegionId;
  /// ID of opposite region.
  final pulumi.Input<String> oppositeRegionId;
  /// Status of the CEN Bandwidth Limit, including "Active" and "Modifying".
  final pulumi.Input<String> status;

  /// Creates a new [GetBandwidthLimitsLimit].
  /// [bandwidthLimit] The bandwidth limit configured for the interconnected regions communication.
  /// [instanceId] ID of the CEN instance.
  /// [localRegionId] ID of local region.
  /// [oppositeRegionId] ID of opposite region.
  /// [status] Status of the CEN Bandwidth Limit, including "Active" and "Modifying".
  GetBandwidthLimitsLimit({
    required this.bandwidthLimit,
    required this.instanceId,
    required this.localRegionId,
    required this.oppositeRegionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': bandwidthLimit,
      'instanceId': instanceId,
      'localRegionId': localRegionId,
      'oppositeRegionId': oppositeRegionId,
      'status': status,
    };
  }

  factory GetBandwidthLimitsLimit.fromMap(Map<String, dynamic> map) {
    return GetBandwidthLimitsLimit(
      bandwidthLimit: pulumi.Input.fromValue(map['bandwidthLimit'] as int),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      localRegionId: pulumi.Input.fromValue(map['localRegionId'] as String),
      oppositeRegionId: pulumi.Input.fromValue(map['oppositeRegionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

