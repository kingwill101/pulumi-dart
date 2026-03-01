// ignore_for_file: unused_element, unnecessary_cast


class GetAcceleratorsAcceleratorBasicBandwidthPackage {
  /// Bandwidth value of cross-domain acceleration package.
  final int bandwidth;
  /// The bandwidth type of the basic bandwidth package.
  final String bandwidthType;
  /// Instance ID of the cross-domain acceleration package.
  final String instanceId;

  /// Creates a new [GetAcceleratorsAcceleratorBasicBandwidthPackage].
  /// [bandwidth] Bandwidth value of cross-domain acceleration package.
  /// [bandwidthType] The bandwidth type of the basic bandwidth package.
  /// [instanceId] Instance ID of the cross-domain acceleration package.
  GetAcceleratorsAcceleratorBasicBandwidthPackage({
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

  factory GetAcceleratorsAcceleratorBasicBandwidthPackage.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorsAcceleratorBasicBandwidthPackage(
      bandwidth: map['bandwidth'] as int,
      bandwidthType: map['bandwidthType'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

