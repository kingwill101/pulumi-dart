// ignore_for_file: unused_element, unnecessary_cast


class GetBandwidthLimitsLimit {
  /// The bandwidth limit configured for the interconnected regions communication.
  final int bandwidthLimit;
  /// ID of the CEN instance.
  final String instanceId;
  /// ID of local region.
  final String localRegionId;
  /// ID of opposite region.
  final String oppositeRegionId;
  /// Status of the CEN Bandwidth Limit, including "Active" and "Modifying".
  final String status;

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
      bandwidthLimit: map['bandwidthLimit'] as int,
      instanceId: map['instanceId'] as String,
      localRegionId: map['localRegionId'] as String,
      oppositeRegionId: map['oppositeRegionId'] as String,
      status: map['status'] as String,
    );
  }
}

