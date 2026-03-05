// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the volume options for the container
class VolumeOptions {
  /// Indicate whether volume is nocopy
  final pulumi.Input<bool>? nocopy;

  /// Creates a new [VolumeOptions].
  /// [nocopy] Indicate whether volume is nocopy
  VolumeOptions({
    this.nocopy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nocopy': ?nocopy,
    };
  }

  factory VolumeOptions.fromMap(Map<String, dynamic> map) {
    return VolumeOptions(
      nocopy: (() { final guardedValue = map['nocopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

