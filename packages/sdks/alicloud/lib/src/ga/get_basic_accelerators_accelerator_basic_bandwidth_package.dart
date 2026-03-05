// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBasicAcceleratorsAcceleratorBasicBandwidthPackage {
  /// The bandwidth value of the cross-region acceleration bandwidth plan. Unit: Mbit/s.
  final pulumi.Input<int> bandwidth;
  /// The type of the bandwidth that is provided by the basic bandwidth plan.
  final pulumi.Input<String> bandwidthType;
  /// The ID of the cross-region acceleration bandwidth plan.
  final pulumi.Input<String> instanceId;

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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      bandwidthType: pulumi.Input.fromValue(map['bandwidthType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

