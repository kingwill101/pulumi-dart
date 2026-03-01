/// All or CloudOnly, All users in AAD are synced to AAD DS domain or only users actively syncing in the cloud
enum SyncScope {
  valueAll("All"),
  valueCloudOnly("CloudOnly");

  const SyncScope(this.value);
  final String value;

  static SyncScope fromValue(String value) {
    for (final item in SyncScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncScope value: $value');
  }
}

