// ignore_for_file: unused_element, unnecessary_cast


class GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage {
  /// The bandwidth value of the cross-region acceleration bandwidth plan. Unit: Mbit/s.
  final int bandwidth;
  /// The ID of the cross-region acceleration bandwidth plan.
  final String instanceId;

  /// Creates a new [GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage].
  /// [bandwidth] The bandwidth value of the cross-region acceleration bandwidth plan. Unit: Mbit/s.
  /// [instanceId] The ID of the cross-region acceleration bandwidth plan.
  GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage({
    required this.bandwidth,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'instanceId': instanceId,
    };
  }

  factory GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage.fromMap(Map<String, dynamic> map) {
    return GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage(
      bandwidth: map['bandwidth'] as int,
      instanceId: map['instanceId'] as String,
    );
  }
}

