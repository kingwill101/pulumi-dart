// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionEndpointThrottleConfig {
  /// Maximum request rate, in requests per second.
  final pulumi.Input<int> rateLimit;

  /// Creates a new [GetFunctionEndpointThrottleConfig].
  /// [rateLimit] Maximum request rate, in requests per second.
  const GetFunctionEndpointThrottleConfig({
    required this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rateLimit': rateLimit,
    };
  }

  factory GetFunctionEndpointThrottleConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionEndpointThrottleConfig(
      rateLimit: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rateLimit'])),
    );
  }
}
