// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret to be added to volume.
class SecretVolumeItemResponse {
  /// Path to project secret to. If no path is provided, path defaults to name of secret listed in secretRef.
  final pulumi.Input<String>? path;
  /// Name of the Container App secret from which to pull the secret value.
  final pulumi.Input<String>? secretRef;

  /// Creates a new [SecretVolumeItemResponse].
  /// [path] Path to project secret to. If no path is provided, path defaults to name of secret listed in secretRef.
  /// [secretRef] Name of the Container App secret from which to pull the secret value.
  SecretVolumeItemResponse({
    this.path,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'secretRef': ?secretRef,
    };
  }

  factory SecretVolumeItemResponse.fromMap(Map<String, dynamic> map) {
    return SecretVolumeItemResponse(
      path: map['path'] == null ? null : (map['path']! as String).input(),
      secretRef: map['secretRef'] == null ? null : (map['secretRef']! as String).input(),
    );
  }
}

