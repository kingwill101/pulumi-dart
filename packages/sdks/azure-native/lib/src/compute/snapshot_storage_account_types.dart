import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku name.
enum SnapshotStorageAccountTypes implements pulumi.PulumiEnum<String> {
  standardLRS("Standard_LRS"),
  premiumLRS("Premium_LRS"),
  standardZRS("Standard_ZRS");

  const SnapshotStorageAccountTypes(this.wireValue);
  @override
  final String wireValue;

  static SnapshotStorageAccountTypes fromValue(String value) {
    for (final item in SnapshotStorageAccountTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotStorageAccountTypes value: $value');
  }
}
