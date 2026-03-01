/// The status.
enum ServiceStatus {
  active("Active"),
  inactive("Inactive");

  const ServiceStatus(this.value);
  final String value;

  static ServiceStatus fromValue(String value) {
    for (final item in ServiceStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceStatus value: $value');
  }
}

