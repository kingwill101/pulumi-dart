// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Kubernetes add-on profile for a managed cluster.
class ManagedClusterAddonProfile {
  /// Key-value pairs for configuring an add-on.
  final pulumi.Input<Map<String, String>>? config;

  /// Whether the add-on is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ManagedClusterAddonProfile].
  /// [config] Key-value pairs for configuring an add-on.
  /// [enabled] Whether the add-on is enabled or not.
  ManagedClusterAddonProfile({this.config, required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'config': ?config, 'enabled': enabled};
  }

  factory ManagedClusterAddonProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAddonProfile(
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
