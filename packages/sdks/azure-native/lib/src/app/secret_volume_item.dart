// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret to be added to volume.
class SecretVolumeItem {
  /// Path to project secret to. If no path is provided, path defaults to name of secret listed in secretRef.
  final pulumi.Input<String>? path;
  /// Name of the Container App secret from which to pull the secret value.
  final pulumi.Input<String>? secretRef;

  /// Creates a new [SecretVolumeItem].
  /// [path] Path to project secret to. If no path is provided, path defaults to name of secret listed in secretRef.
  /// [secretRef] Name of the Container App secret from which to pull the secret value.
  SecretVolumeItem({
    this.path,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'secretRef': ?secretRef,
    };
  }

  factory SecretVolumeItem.fromMap(Map<String, dynamic> map) {
    return SecretVolumeItem(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

