// ignore_for_file: unused_element, unnecessary_cast


class RouterExpressConnectRouterRegion {
  /// Representative region ID.
  final String? regionId;
  /// Represents the forwarding mode of the current region.
  final String? transitMode;

  /// Creates a new [RouterExpressConnectRouterRegion].
  /// [regionId] Representative region ID.
  /// [transitMode] Represents the forwarding mode of the current region.
  RouterExpressConnectRouterRegion({
    this.regionId,
    this.transitMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': ?regionId,
      'transitMode': ?transitMode,
    };
  }

  factory RouterExpressConnectRouterRegion.fromMap(Map<String, dynamic> map) {
    return RouterExpressConnectRouterRegion(
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
      transitMode: map['transitMode'] == null ? null : map['transitMode'] as String,
    );
  }
}

