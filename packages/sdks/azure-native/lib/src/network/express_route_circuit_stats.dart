// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains stats associated with the peering.
class ExpressRouteCircuitStats {
  /// The Primary BytesIn of the peering.
  final pulumi.Input<double>? primarybytesIn;
  /// The primary BytesOut of the peering.
  final pulumi.Input<double>? primarybytesOut;
  /// The secondary BytesIn of the peering.
  final pulumi.Input<double>? secondarybytesIn;
  /// The secondary BytesOut of the peering.
  final pulumi.Input<double>? secondarybytesOut;

  /// Creates a new [ExpressRouteCircuitStats].
  /// [primarybytesIn] The Primary BytesIn of the peering.
  /// [primarybytesOut] The primary BytesOut of the peering.
  /// [secondarybytesIn] The secondary BytesIn of the peering.
  /// [secondarybytesOut] The secondary BytesOut of the peering.
  ExpressRouteCircuitStats({
    this.primarybytesIn,
    this.primarybytesOut,
    this.secondarybytesIn,
    this.secondarybytesOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primarybytesIn': ?primarybytesIn,
      'primarybytesOut': ?primarybytesOut,
      'secondarybytesIn': ?secondarybytesIn,
      'secondarybytesOut': ?secondarybytesOut,
    };
  }

  factory ExpressRouteCircuitStats.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitStats(
      primarybytesIn: (() { final guardedValue = map['primarybytesIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      primarybytesOut: (() { final guardedValue = map['primarybytesOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      secondarybytesIn: (() { final guardedValue = map['secondarybytesIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      secondarybytesOut: (() { final guardedValue = map['secondarybytesOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

