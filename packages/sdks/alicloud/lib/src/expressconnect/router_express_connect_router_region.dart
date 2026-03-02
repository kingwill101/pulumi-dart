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
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      transitMode: map['transitMode'] == null ? null : (map['transitMode']! as String).input(),
    );
  }
}

