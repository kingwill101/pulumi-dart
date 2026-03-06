// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detail settings for Dev Tool Portal feature
class DevToolPortalFeatureDetailResponse {
  /// Route path to visit the plugin
  final pulumi.Input<String> route;
  /// State of the plugin
  final pulumi.Input<String>? state;

  /// Creates a new [DevToolPortalFeatureDetailResponse].
  /// [route] Route path to visit the plugin
  /// [state] State of the plugin
  const DevToolPortalFeatureDetailResponse({
    required this.route,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'route': route,
      'state': ?state,
    };
  }

  factory DevToolPortalFeatureDetailResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalFeatureDetailResponse(
      route: pulumi.Input.fromValue(map['route'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

