/// Provisioning status field
enum ProviderStatus {
  succeeded("Succeeded"),
  launching("Launching"),
  updating("Updating"),
  deleting("Deleting"),
  deleted("Deleted"),
  failed("Failed");

  const ProviderStatus(this.value);
  final String value;

  static ProviderStatus fromValue(String value) {
    for (final item in ProviderStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProviderStatus value: $value');
  }
}

