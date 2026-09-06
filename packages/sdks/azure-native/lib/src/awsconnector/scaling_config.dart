// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ScalingConfig
class ScalingConfig {
  /// Property desiredSize
  final pulumi.Input<int?>? desiredSize;
  /// Property maxSize
  final pulumi.Input<int?>? maxSize;
  /// Property minSize
  final pulumi.Input<int?>? minSize;

  /// Creates a new [ScalingConfig].
  /// [desiredSize] Property desiredSize
  /// [maxSize] Property maxSize
  /// [minSize] Property minSize
  const ScalingConfig({
    this.desiredSize,
    this.maxSize,
    this.minSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredSize': ?desiredSize,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
    };
  }

  factory ScalingConfig.fromMap(Map<String, dynamic> map) {
    return ScalingConfig(
      desiredSize: (() { final guardedValue = map['desiredSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
