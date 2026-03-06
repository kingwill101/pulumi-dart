// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the Power State of the cluster
class PowerState {
  /// Tells whether the cluster is Running or Stopped
  final pulumi.Input<String>? code;

  /// Creates a new [PowerState].
  /// [code] Tells whether the cluster is Running or Stopped
  const PowerState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory PowerState.fromMap(Map<String, dynamic> map) {
    return PowerState(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

