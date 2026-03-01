/// Resource Health Status
enum ResourceHealthStatus {
  valueHealthy("Healthy"),
  valueTransientDegraded("TransientDegraded"),
  valuePersistentDegraded("PersistentDegraded"),
  valueTransientUnhealthy("TransientUnhealthy"),
  valuePersistentUnhealthy("PersistentUnhealthy"),
  valueInvalid("Invalid");

  const ResourceHealthStatus(this.value);
  final String value;

  static ResourceHealthStatus fromValue(String value) {
    for (final item in ResourceHealthStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceHealthStatus value: $value');
  }
}

