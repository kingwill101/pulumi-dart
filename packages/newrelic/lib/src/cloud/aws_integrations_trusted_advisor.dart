// ignore_for_file: unused_element, unnecessary_cast


class AwsIntegrationsTrustedAdvisor {
  /// The data polling interval in seconds.
  final int? metricsPollingInterval;

  /// Creates a new [AwsIntegrationsTrustedAdvisor].
  /// [metricsPollingInterval] The data polling interval in seconds.
  AwsIntegrationsTrustedAdvisor({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsIntegrationsTrustedAdvisor.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsTrustedAdvisor(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

