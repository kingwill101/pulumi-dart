// ignore_for_file: unused_element, unnecessary_cast


/// Dapr Component Resiliency Policy Timeout Policy Configuration.
class DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse {
  /// The optional response timeout in seconds
  final int? responseTimeoutInSeconds;

  /// Creates a new [DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse].
  /// [responseTimeoutInSeconds] The optional response timeout in seconds
  DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse({
    this.responseTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseTimeoutInSeconds': ?responseTimeoutInSeconds,
    };
  }

  factory DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DaprComponentResiliencyPolicyTimeoutPolicyConfigurationResponse(
      responseTimeoutInSeconds: map['responseTimeoutInSeconds'] == null ? null : map['responseTimeoutInSeconds'] as int,
    );
  }
}

