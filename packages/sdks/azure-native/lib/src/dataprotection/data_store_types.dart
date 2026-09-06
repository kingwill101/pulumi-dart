import 'package:pulumi/pulumi.dart' as pulumi;

/// type of datastore; Operational/Vault/Archive
enum DataStoreTypes implements pulumi.PulumiEnum<String> {
  valueOperationalStore("OperationalStore"),
  valueVaultStore("VaultStore"),
  valueArchiveStore("ArchiveStore");

  const DataStoreTypes(this.wireValue);
  @override
  final String wireValue;

  static DataStoreTypes fromValue(String value) {
    for (final item in DataStoreTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStoreTypes value: $value');
  }
}
