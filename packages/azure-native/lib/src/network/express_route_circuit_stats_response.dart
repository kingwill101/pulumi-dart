// ignore_for_file: unused_element, unnecessary_cast


/// Contains stats associated with the peering.
class ExpressRouteCircuitStatsResponse {
  /// The Primary BytesIn of the peering.
  final double? primarybytesIn;
  /// The primary BytesOut of the peering.
  final double? primarybytesOut;
  /// The secondary BytesIn of the peering.
  final double? secondarybytesIn;
  /// The secondary BytesOut of the peering.
  final double? secondarybytesOut;

  /// Creates a new [ExpressRouteCircuitStatsResponse].
  /// [primarybytesIn] The Primary BytesIn of the peering.
  /// [primarybytesOut] The primary BytesOut of the peering.
  /// [secondarybytesIn] The secondary BytesIn of the peering.
  /// [secondarybytesOut] The secondary BytesOut of the peering.
  ExpressRouteCircuitStatsResponse({
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

  factory ExpressRouteCircuitStatsResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitStatsResponse(
      primarybytesIn: map['primarybytesIn'] == null ? null : map['primarybytesIn'] as double,
      primarybytesOut: map['primarybytesOut'] == null ? null : map['primarybytesOut'] as double,
      secondarybytesIn: map['secondarybytesIn'] == null ? null : map['secondarybytesIn'] as double,
      secondarybytesOut: map['secondarybytesOut'] == null ? null : map['secondarybytesOut'] as double,
    );
  }
}

