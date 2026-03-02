// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the volume mount.
class VolumeMount {
  /// The path within the container where the volume should be mounted. Must not contain colon (:).
  final pulumi.Input<String> mountPath;
  /// The name of the volume mount.
  final pulumi.Input<String> name;
  /// The flag indicating whether the volume mount is read-only.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [VolumeMount].
  /// [mountPath] The path within the container where the volume should be mounted. Must not contain colon (:).
  /// [name] The name of the volume mount.
  /// [readOnly] The flag indicating whether the volume mount is read-only.
  VolumeMount({
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

  factory VolumeMount.fromMap(Map<String, dynamic> map) {
    return VolumeMount(
      mountPath: (map['mountPath'] as String).input(),
      name: (map['name'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
    );
  }
}

