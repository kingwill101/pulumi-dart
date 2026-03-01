// ignore_for_file: unused_element, unnecessary_cast


class AwsGovcloudIntegrationsAwsDirectConnect {
  /// Specify each AWS region that includes the resources that you want to monitor
  final List<String>? awsRegions;
  /// The data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [AwsGovcloudIntegrationsAwsDirectConnect].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [metricsPollingInterval] The data polling interval in seconds
  AwsGovcloudIntegrationsAwsDirectConnect({
    this.awsRegions,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsGovcloudIntegrationsAwsDirectConnect.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsAwsDirectConnect(
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

