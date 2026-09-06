// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GPU settings for the Agent Pool.
class GPUProfile {
  /// Whether to install GPU drivers. When it's not specified, default is Install.
  final pulumi.Input<dynamic>? driver;

  /// Creates a new [GPUProfile].
  /// [driver] Whether to install GPU drivers. When it's not specified, default is Install.
  const GPUProfile({
    this.driver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
    };
  }

  factory GPUProfile.fromMap(Map<String, dynamic> map) {
    return GPUProfile(
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
