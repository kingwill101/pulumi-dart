/// Configuration for VM IPs.
enum WorkerPoolIpConfiguration {
  workerIpUnspecified("WORKER_IP_UNSPECIFIED"),
  workerIpPublic("WORKER_IP_PUBLIC"),
  workerIpPrivate("WORKER_IP_PRIVATE");

  const WorkerPoolIpConfiguration(this.value);
  final String value;

  static WorkerPoolIpConfiguration fromValue(String value) {
    for (final item in WorkerPoolIpConfiguration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkerPoolIpConfiguration value: $value');
  }
}

