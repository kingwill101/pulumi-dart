// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedKubernetesAutoMode {
  /// Whether to enable auto mode. Valid values: `true`, `false`. Only ACK managed Pro clusters support Auto Mode.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedKubernetesAutoMode].
  /// [enabled] Whether to enable auto mode. Valid values: `true`, `false`. Only ACK managed Pro clusters support Auto Mode.
  ManagedKubernetesAutoMode({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedKubernetesAutoMode.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesAutoMode(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

