// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkPropertiesResponseVipPool {
  /// Ending IP address for the IP Pool
  final pulumi.Input<String?>? endIP;
  /// Starting IP address for the IP Pool
  final pulumi.Input<String?>? startIP;

  /// Creates a new [VirtualNetworkPropertiesResponseVipPool].
  /// [endIP] Ending IP address for the IP Pool
  /// [startIP] Starting IP address for the IP Pool
  const VirtualNetworkPropertiesResponseVipPool({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory VirtualNetworkPropertiesResponseVipPool.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseVipPool(
      endIP: (() { final guardedValue = map['endIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startIP: (() { final guardedValue = map['startIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
