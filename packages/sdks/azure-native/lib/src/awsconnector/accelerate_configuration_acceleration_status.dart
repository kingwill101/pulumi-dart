/// Specifies the transfer acceleration status of the bucket.
enum AccelerateConfigurationAccelerationStatus {
  enabled("Enabled"),
  suspended("Suspended");

  const AccelerateConfigurationAccelerationStatus(this.wireValue);
  final String wireValue;

  static AccelerateConfigurationAccelerationStatus fromValue(String value) {
    for (final item in AccelerateConfigurationAccelerationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccelerateConfigurationAccelerationStatus value: $value');
  }
}

