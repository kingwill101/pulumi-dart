// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the volume mount.
class VolumeMountResponse {
  /// The path within the container where the volume should be mounted. Must not contain colon (:).
  final pulumi.Input<String> mountPath;
  /// The name of the volume mount.
  final pulumi.Input<String> name;
  /// The flag indicating whether the volume mount is read-only.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [VolumeMountResponse].
  /// [mountPath] The path within the container where the volume should be mounted. Must not contain colon (:).
  /// [name] The name of the volume mount.
  /// [readOnly] The flag indicating whether the volume mount is read-only.
  VolumeMountResponse({
    required this.mountPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
    };
  }

  factory VolumeMountResponse.fromMap(Map<String, dynamic> map) {
    return VolumeMountResponse(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

