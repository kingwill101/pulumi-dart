// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworksPropertiesResponseVipPool {
  /// Ending IP address for the IP Pool
  final pulumi.Input<String>? endIP;
  /// Starting IP address for the IP Pool
  final pulumi.Input<String>? startIP;

  /// Creates a new [VirtualNetworksPropertiesResponseVipPool].
  /// [endIP] Ending IP address for the IP Pool
  /// [startIP] Starting IP address for the IP Pool
  VirtualNetworksPropertiesResponseVipPool({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory VirtualNetworksPropertiesResponseVipPool.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseVipPool(
      endIP: map['endIP'] == null ? null : (map['endIP']! as String).input(),
      startIP: map['startIP'] == null ? null : (map['startIP']! as String).input(),
    );
  }
}

