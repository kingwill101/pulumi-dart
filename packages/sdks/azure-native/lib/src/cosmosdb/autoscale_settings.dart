// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettings {
  /// Represents maximum throughput, the resource can scale up to.
  final pulumi.Input<int?>? maxThroughput;

  /// Creates a new [AutoscaleSettings].
  /// [maxThroughput] Represents maximum throughput, the resource can scale up to.
  const AutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory AutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettings(
      maxThroughput: (() { final guardedValue = map['maxThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
