// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworksPropertiesResponseVmipPool {
  /// Ending IP address for the IP Pool
  final pulumi.Input<String>? endIP;
  /// Starting IP address for the IP Pool
  final pulumi.Input<String>? startIP;

  /// Creates a new [VirtualNetworksPropertiesResponseVmipPool].
  /// [endIP] Ending IP address for the IP Pool
  /// [startIP] Starting IP address for the IP Pool
  VirtualNetworksPropertiesResponseVmipPool({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory VirtualNetworksPropertiesResponseVmipPool.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseVmipPool(
      endIP: map['endIP'] == null ? null : (map['endIP']! as String).input(),
      startIP: map['startIP'] == null ? null : (map['startIP']! as String).input(),
    );
  }
}

