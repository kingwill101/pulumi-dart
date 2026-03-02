// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TracingConfig
class TracingConfig {
  /// The tracing mode.
  final pulumi.Input<String>? mode;

  /// Creates a new [TracingConfig].
  /// [mode] The tracing mode.
  TracingConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory TracingConfig.fromMap(Map<String, dynamic> map) {
    return TracingConfig(
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
    );
  }
}

