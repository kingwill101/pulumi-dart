/// Configuration for VM IPs.
enum GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration {
  workerIpUnspecified("WORKER_IP_UNSPECIFIED"),
  workerIpPublic("WORKER_IP_PUBLIC"),
  workerIpPrivate("WORKER_IP_PRIVATE");

  const GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration(this.value);
  final String value;

  static GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration fromValue(String value) {
    for (final item in GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatapipelinesV1RuntimeEnvironmentIpConfiguration value: $value');
  }
}

