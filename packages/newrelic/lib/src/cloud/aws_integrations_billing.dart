// ignore_for_file: unused_element, unnecessary_cast


class AwsIntegrationsBilling {
  /// The data polling interval in seconds.
  final int? metricsPollingInterval;

  /// Creates a new [AwsIntegrationsBilling].
  /// [metricsPollingInterval] The data polling interval in seconds.
  AwsIntegrationsBilling({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsIntegrationsBilling.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsBilling(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

