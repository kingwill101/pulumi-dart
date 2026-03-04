// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Addon configurations
class AddonProfilesResponse {
  /// Config - Key-value pairs for configuring an add-on.
  final pulumi.Input<Map<String, String>>? config;

  /// Enabled - Whether the add-on is enabled or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AddonProfilesResponse].
  /// [config] Config - Key-value pairs for configuring an add-on.
  /// [enabled] Enabled - Whether the add-on is enabled or not.
  AddonProfilesResponse({this.config, this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'config': ?config, 'enabled': ?enabled};
  }

  factory AddonProfilesResponse.fromMap(Map<String, dynamic> map) {
    return AddonProfilesResponse(
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
