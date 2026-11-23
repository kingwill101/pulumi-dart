// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeFrom {
  /// Whether this container has read-only access to the volumes.
  ///
  /// Default - `false`.
  final pulumi.Input<bool?>? readOnly;
  /// The name of the container from which to mount volumes.
  final pulumi.Input<String?>? sourceContainer;

  /// Creates a new [VolumeFrom].
  /// [readOnly] Whether this container has read-only access to the volumes.
  /// [sourceContainer] The name of the container from which to mount volumes.
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
