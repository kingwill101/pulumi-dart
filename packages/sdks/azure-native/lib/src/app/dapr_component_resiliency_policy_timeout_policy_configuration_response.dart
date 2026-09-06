// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr Component Resiliency Policy Timeout Policy Configuration.
class DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse {
  /// The optional response timeout in seconds
  final pulumi.Input<int?>? responseTimeoutInSeconds;

  /// Creates a new [DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse].
  /// [responseTimeoutInSeconds] The optional response timeout in seconds
  const DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse({
    this.responseTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseTimeoutInSeconds': ?responseTimeoutInSeconds,
    };
  }

  factory DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse(
      responseTimeoutInSeconds: (() { final guardedValue = map['responseTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
