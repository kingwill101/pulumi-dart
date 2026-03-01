// ignore_for_file: unused_element, unnecessary_cast


class AwsGovcloudIntegrationsRoute53 {
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchExtendedInventory;
  /// The data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [AwsGovcloudIntegrationsRoute53].
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds
  AwsGovcloudIntegrationsRoute53({
    this.fetchExtendedInventory,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsGovcloudIntegrationsRoute53.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsRoute53(
      fetchExtendedInventory: map['fetchExtendedInventory'] == null ? null : map['fetchExtendedInventory'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

