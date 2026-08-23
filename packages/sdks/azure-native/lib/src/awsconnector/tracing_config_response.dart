// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TracingConfig
class TracingConfigResponse {
  /// The tracing mode.
  final pulumi.Input<String>? mode;

  /// Creates a new [TracingConfigResponse].
  /// [mode] The tracing mode.
  const TracingConfigResponse({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory TracingConfigResponse.fromMap(Map<String, dynamic> map) {
    return TracingConfigResponse(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
