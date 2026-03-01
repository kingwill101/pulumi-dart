// ignore_for_file: unused_element, unnecessary_cast


/// Dapr Component Resiliency Policy Timeout Policy Configuration.
class DaprComponentResiliencyPolicyTimeoutPolicyConfiguration {
  /// The optional response timeout in seconds
  final int? responseTimeoutInSeconds;

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

  factory DaprComponentResiliencyPolicyTimeoutPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyTimeoutPolicyConfiguration(
      responseTimeoutInSeconds: map['responseTimeoutInSeconds'] == null ? null : map['responseTimeoutInSeconds'] as int,
    );
  }
}

