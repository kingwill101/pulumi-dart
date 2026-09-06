// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detail settings for Dev Tool Portal feature
class DevToolPortalFeatureDetail {
  /// State of the plugin
  final pulumi.Input<dynamic>? state;

  /// Creates a new [DevToolPortalFeatureDetail].
  /// [state] State of the plugin
  DevToolPortalFeatureDetail({
    pulumi.Input<dynamic>? state,
  }) : state = state ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DevToolPortalFeatureDetail.fromMap(Map<String, dynamic> map) {
    return DevToolPortalFeatureDetail(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
