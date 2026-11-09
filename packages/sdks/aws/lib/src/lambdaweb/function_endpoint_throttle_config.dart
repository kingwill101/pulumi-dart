// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEndpointThrottleConfig {
  /// Maximum request rate for the endpoint, in requests per second. The service only accepts quantized values: `0`, `100`-`1000` in steps of 100, and `2000`-`10000` in steps of 1000.
  final pulumi.Input<int> rateLimit;

  /// Creates a new [FunctionEndpointThrottleConfig].
  /// [rateLimit] Maximum request rate for the endpoint, in requests per second. The service only accepts quantized values: `0`, `100`-`1000` in steps of 100, and `2000`-`10000` in steps of 1000.
  const FunctionEndpointThrottleConfig({
    required this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rateLimit': rateLimit,
    };
  }

  factory FunctionEndpointThrottleConfig.fromMap(Map<String, dynamic> map) {
    return FunctionEndpointThrottleConfig(
      rateLimit: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rateLimit'])),
    );
  }
}
