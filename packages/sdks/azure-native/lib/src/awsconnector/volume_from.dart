// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VolumeFrom
class VolumeFrom {
  /// If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  final pulumi.Input<bool?>? readOnly;
  /// The name of another container within the same task definition to mount volumes from.
  final pulumi.Input<String?>? sourceContainer;

  /// Creates a new [VolumeFrom].
  /// [readOnly] If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  /// [sourceContainer] The name of another container within the same task definition to mount volumes from.
  const VolumeFrom({
    this.readOnly,
    this.sourceContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'sourceContainer': ?sourceContainer,
    };
  }

  factory VolumeFrom.fromMap(Map<String, dynamic> map) {
    return VolumeFrom(
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceContainer: (() { final guardedValue = map['sourceContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
