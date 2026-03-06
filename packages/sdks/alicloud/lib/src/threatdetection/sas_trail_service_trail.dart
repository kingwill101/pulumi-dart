// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SasTrailServiceTrail {
  /// Service tracking on status. The value is:
  /// - **on:** Open
  /// - **off:** off.
  final pulumi.Input<String>? config;
  /// The timestamp of the last service update. Unit: milliseconds.
  final pulumi.Input<int>? updateTime;

  /// Creates a new [SasTrailServiceTrail].
  /// [config] Service tracking on status. The value is:
  /// [updateTime] The timestamp of the last service update. Unit: milliseconds.
  const SasTrailServiceTrail({
    this.config,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'updateTime': ?updateTime,
    };
  }

  factory SasTrailServiceTrail.fromMap(Map<String, dynamic> map) {
    return SasTrailServiceTrail(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

