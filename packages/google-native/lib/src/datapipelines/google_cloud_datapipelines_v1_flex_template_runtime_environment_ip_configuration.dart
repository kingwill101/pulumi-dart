/// Configuration for VM IPs.
enum GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration {
  workerIpUnspecified("WORKER_IP_UNSPECIFIED"),
  workerIpPublic("WORKER_IP_PUBLIC"),
  workerIpPrivate("WORKER_IP_PRIVATE");

  const GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration(
      this.value);
  final String value;

  static GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration
      fromValue(String value) {
    for (final item
        in GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentIpConfiguration value: $value');
  }
}
