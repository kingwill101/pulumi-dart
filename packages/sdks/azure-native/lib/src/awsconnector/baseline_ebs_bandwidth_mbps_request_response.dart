// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BaselineEbsBandwidthMbpsRequest
class BaselineEbsBandwidthMbpsRequestResponse {
  /// The maximum value in Mbps.
  final pulumi.Input<int?>? max;
  /// The minimum value in Mbps.
  final pulumi.Input<int?>? min;

  /// Creates a new [BaselineEbsBandwidthMbpsRequestResponse].
  /// [max] The maximum value in Mbps.
  /// [min] The minimum value in Mbps.
  const BaselineEbsBandwidthMbpsRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory BaselineEbsBandwidthMbpsRequestResponse.fromMap(Map<String, dynamic> map) {
    return BaselineEbsBandwidthMbpsRequestResponse(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
