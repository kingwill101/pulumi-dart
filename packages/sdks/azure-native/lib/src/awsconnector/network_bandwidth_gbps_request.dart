// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NetworkBandwidthGbpsRequest
class NetworkBandwidthGbpsRequest {
  /// The maximum amount of network bandwidth, in gigabits per second (Gbps).
  final pulumi.Input<int?>? max;
  /// The minimum amount of network bandwidth, in gigabits per second (Gbps).
  final pulumi.Input<int?>? min;

  /// Creates a new [NetworkBandwidthGbpsRequest].
  /// [max] The maximum amount of network bandwidth, in gigabits per second (Gbps).
  /// [min] The minimum amount of network bandwidth, in gigabits per second (Gbps).
  const NetworkBandwidthGbpsRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory NetworkBandwidthGbpsRequest.fromMap(Map<String, dynamic> map) {
    return NetworkBandwidthGbpsRequest(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
