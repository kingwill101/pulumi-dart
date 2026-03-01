// ignore_for_file: unused_element, unnecessary_cast


class GetBasicAcceleratorsAcceleratorBasicBandwidthPackage {
  /// The bandwidth value of the cross-region acceleration bandwidth plan. Unit: Mbit/s.
  final int bandwidth;
  /// The type of the bandwidth that is provided by the basic bandwidth plan.
  final String bandwidthType;
  /// The ID of the cross-region acceleration bandwidth plan.
  final String instanceId;

  /// Creates a new [GetBasicAcceleratorsAcceleratorBasicBandwidthPackage].
  /// [bandwidth] The bandwidth value of the cross-region acceleration bandwidth plan. Unit: Mbit/s.
  /// [bandwidthType] The type of the bandwidth that is provided by the basic bandwidth plan.
  /// [instanceId] The ID of the cross-region acceleration bandwidth plan.
  GetBasicAcceleratorsAcceleratorBasicBandwidthPackage({
    required this.bandwidth,
    required this.bandwidthType,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'bandwidthType': bandwidthType,
      'instanceId': instanceId,
    };
  }

  factory GetBasicAcceleratorsAcceleratorBasicBandwidthPackage.fromMap(Map<String, dynamic> map) {
    return GetBasicAcceleratorsAcceleratorBasicBandwidthPackage(
      bandwidth: map['bandwidth'] as int,
      bandwidthType: map['bandwidthType'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

