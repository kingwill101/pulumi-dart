// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr Component Resiliency Policy Timeout Policy Configuration.
class DaprComponentResiliencyPolicyTimeoutPolicyConfiguration {
  /// The optional response timeout in seconds
  final pulumi.Input<int>? responseTimeoutInSeconds;

  /// Creates a new [DaprComponentResiliencyPolicyTimeoutPolicyConfiguration].
  /// [responseTimeoutInSeconds] The optional response timeout in seconds
  DaprComponentResiliencyPolicyTimeoutPolicyConfiguration({
    this.responseTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseTimeoutInSeconds': ?responseTimeoutInSeconds,
    };
  }

  factory DaprComponentResiliencyPolicyTimeoutPolicyConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DaprComponentResiliencyPolicyTimeoutPolicyConfiguration(
      responseTimeoutInSeconds: (() {
        final guardedValue = map['responseTimeoutInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
