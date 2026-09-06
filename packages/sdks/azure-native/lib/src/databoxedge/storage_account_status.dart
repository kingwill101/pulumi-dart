import 'package:pulumi/pulumi.dart' as pulumi;

/// Current status of the storage account
enum StorageAccountStatus implements pulumi.PulumiEnum<String> {
  valueOK("OK"),
  valueOffline("Offline"),
  valueUnknown("Unknown"),
  valueUpdating("Updating"),
  valueNeedsAttention("NeedsAttention");

  const StorageAccountStatus(this.wireValue);
  @override
  final String wireValue;

  static StorageAccountStatus fromValue(String value) {
    for (final item in StorageAccountStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAccountStatus value: $value');
  }
}
