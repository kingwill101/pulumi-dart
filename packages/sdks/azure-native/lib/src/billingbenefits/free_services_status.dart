/// Current status of the free services
enum FreeServicesStatus {
  valueUnknown("Unknown"),
  valuePending("Pending"),
  valueActive("Active"),
  valueCanceled("Canceled"),
  valueCompleted("Completed");

  const FreeServicesStatus(this.value);
  final String value;

  static FreeServicesStatus fromValue(String value) {
    for (final item in FreeServicesStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FreeServicesStatus value: $value');
  }
}

