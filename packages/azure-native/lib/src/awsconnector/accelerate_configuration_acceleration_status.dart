/// Specifies the transfer acceleration status of the bucket.
enum AccelerateConfigurationAccelerationStatus {
  enabled("Enabled"),
  suspended("Suspended");

  const AccelerateConfigurationAccelerationStatus(this.value);
  final String value;

  static AccelerateConfigurationAccelerationStatus fromValue(String value) {
    for (final item in AccelerateConfigurationAccelerationStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccelerateConfigurationAccelerationStatus value: $value');
  }
}

