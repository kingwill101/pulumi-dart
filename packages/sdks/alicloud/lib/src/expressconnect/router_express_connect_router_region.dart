// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterExpressConnectRouterRegion {
  /// Representative region ID.
  final pulumi.Input<String>? regionId;
  /// Represents the forwarding mode of the current region.
  final pulumi.Input<String>? transitMode;

  /// Creates a new [RouterExpressConnectRouterRegion].
  /// [regionId] Representative region ID.
  /// [transitMode] Represents the forwarding mode of the current region.
  const RouterExpressConnectRouterRegion({
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
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitMode: (() { final guardedValue = map['transitMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

