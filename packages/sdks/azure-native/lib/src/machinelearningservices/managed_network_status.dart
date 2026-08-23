/// Status for the managed network of a machine learning workspace.
enum ManagedNetworkStatus {
  inactive("Inactive"),
  active("Active");

  const ManagedNetworkStatus(this.wireValue);
  final String wireValue;

  static ManagedNetworkStatus fromValue(String value) {
    for (final item in ManagedNetworkStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedNetworkStatus value: $value');
  }
}
