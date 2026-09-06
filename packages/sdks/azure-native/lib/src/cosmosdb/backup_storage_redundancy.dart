import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to indicate type of backup residency
enum BackupStorageRedundancy implements pulumi.PulumiEnum<String> {
  valueGeo("Geo"),
  valueLocal("Local"),
  valueZone("Zone");

  const BackupStorageRedundancy(this.wireValue);
  @override
  final String wireValue;

  static BackupStorageRedundancy fromValue(String value) {
    for (final item in BackupStorageRedundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupStorageRedundancy value: $value');
  }
}
