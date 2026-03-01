/// The sku name.
enum SnapshotStorageAccountTypes {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardZRS("Standard_ZRS");

  const SnapshotStorageAccountTypes(this.value);
  final String value;

  static SnapshotStorageAccountTypes fromValue(String value) {
    for (final item in SnapshotStorageAccountTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotStorageAccountTypes value: $value');
  }
}

