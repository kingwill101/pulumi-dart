/// Current status of the free services
enum FreeServicesStatus {
  valueUnknown("Unknown"),
  valuePending("Pending"),
  valueActive("Active"),
  valueCanceled("Canceled"),
  valueCompleted("Completed");

  const FreeServicesStatus(this.wireValue);
  final String wireValue;

  static FreeServicesStatus fromValue(String value) {
    for (final item in FreeServicesStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FreeServicesStatus value: $value');
  }
}
