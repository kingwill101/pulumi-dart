/// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
enum StoragePoolPerformanceProvisioningType {
  advanced("ADVANCED"),
  standard("STANDARD"),
  unspecified("UNSPECIFIED");

  const StoragePoolPerformanceProvisioningType(this.value);
  final String value;

  static StoragePoolPerformanceProvisioningType fromValue(String value) {
    for (final item in StoragePoolPerformanceProvisioningType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown StoragePoolPerformanceProvisioningType value: $value',
    );
  }
}
