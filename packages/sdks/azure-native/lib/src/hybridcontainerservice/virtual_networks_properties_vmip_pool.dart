// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworksPropertiesVmipPool {
  /// Ending IP address for the IP Pool
  final pulumi.Input<String>? endIP;
  /// Starting IP address for the IP Pool
  final pulumi.Input<String>? startIP;

  /// Creates a new [VirtualNetworksPropertiesVmipPool].
  /// [endIP] Ending IP address for the IP Pool
  /// [startIP] Starting IP address for the IP Pool
  VirtualNetworksPropertiesVmipPool({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory VirtualNetworksPropertiesVmipPool.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesVmipPool(
      endIP: map['endIP'] == null ? null : (map['endIP'] as String).input(),
      startIP: map['startIP'] == null ? null : (map['startIP'] as String).input(),
    );
  }
}

