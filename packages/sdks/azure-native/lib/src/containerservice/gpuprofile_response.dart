// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GPU settings for the Agent Pool.
class GPUProfileResponse {
  /// Whether to install GPU drivers. When it's not specified, default is Install.
  final pulumi.Input<String>? driver;

  /// Creates a new [GPUProfileResponse].
  /// [driver] Whether to install GPU drivers. When it's not specified, default is Install.
  GPUProfileResponse({
    this.driver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
    };
  }

  factory GPUProfileResponse.fromMap(Map<String, dynamic> map) {
    return GPUProfileResponse(
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

