// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAcceleratorsAcceleratorBasicBandwidthPackage {
  /// Bandwidth value of cross-domain acceleration package.
  final pulumi.Input<int> bandwidth;

  /// The bandwidth type of the basic bandwidth package.
  final pulumi.Input<String> bandwidthType;

  /// Instance ID of the cross-domain acceleration package.
  final pulumi.Input<String> instanceId;

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

  factory GetAcceleratorsAcceleratorBasicBandwidthPackage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAcceleratorsAcceleratorBasicBandwidthPackage(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      bandwidthType: pulumi.Input.fromValue(map['bandwidthType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}
