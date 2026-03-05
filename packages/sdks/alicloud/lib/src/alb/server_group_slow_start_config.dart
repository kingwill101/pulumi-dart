// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupSlowStartConfig {
  /// The duration of a slow start.
  ///
  /// Valid values: 30 to 900.
  ///
  /// Default value: 30.
  final pulumi.Input<int>? slowStartDuration;
  /// Indicates whether slow starts are enabled. Valid values:
  final pulumi.Input<bool>? slowStartEnabled;

  /// Creates a new [ServerGroupSlowStartConfig].
  /// [slowStartDuration] The duration of a slow start.
  /// [slowStartEnabled] Indicates whether slow starts are enabled. Valid values:
  ServerGroupSlowStartConfig({
    this.slowStartDuration,
    this.slowStartEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slowStartDuration': ?slowStartDuration,
      'slowStartEnabled': ?slowStartEnabled,
    };
  }

  factory ServerGroupSlowStartConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupSlowStartConfig(
      slowStartDuration: (() { final guardedValue = map['slowStartDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      slowStartEnabled: (() { final guardedValue = map['slowStartEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

