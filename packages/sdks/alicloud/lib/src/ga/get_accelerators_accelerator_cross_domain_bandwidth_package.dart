// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAcceleratorsAcceleratorCrossDomainBandwidthPackage {
  /// Bandwidth value of cross-domain acceleration package.
  final pulumi.Input<int> bandwidth;
  /// Instance ID of the cross-domain acceleration package.
  final pulumi.Input<String> instanceId;

  /// Creates a new [GetAcceleratorsAcceleratorCrossDomainBandwidthPackage].
  /// [bandwidth] Bandwidth value of cross-domain acceleration package.
  /// [instanceId] Instance ID of the cross-domain acceleration package.
  GetAcceleratorsAcceleratorCrossDomainBandwidthPackage({
    required this.bandwidth,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'instanceId': instanceId,
    };
  }

  factory GetAcceleratorsAcceleratorCrossDomainBandwidthPackage.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorsAcceleratorCrossDomainBandwidthPackage(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

