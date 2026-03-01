/// Status for the managed network of a machine learning workspace.
enum ManagedNetworkStatus {
  valueInactive("Inactive"),
  valueActive("Active");

  const ManagedNetworkStatus(this.value);
  final String value;

  static ManagedNetworkStatus fromValue(String value) {
    for (final item in ManagedNetworkStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedNetworkStatus value: $value');
  }
}

