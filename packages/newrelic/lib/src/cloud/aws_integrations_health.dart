// ignore_for_file: unused_element, unnecessary_cast


class AwsIntegrationsHealth {
  /// The data polling interval in seconds.
  final int? metricsPollingInterval;

  /// Creates a new [AwsIntegrationsHealth].
  /// [metricsPollingInterval] The data polling interval in seconds.
  AwsIntegrationsHealth({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsIntegrationsHealth.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsHealth(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

