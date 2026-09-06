import 'package:pulumi/pulumi.dart' as pulumi;

/// Backup Mode to specify whether to use existing backup or create new backup.
enum BackupMode implements pulumi.PulumiEnum<String> {
  valueCreateBackup("CreateBackup"),
  valueExistingBackup("ExistingBackup");

  const BackupMode(this.wireValue);
  @override
  final String wireValue;

  static BackupMode fromValue(String value) {
    for (final item in BackupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupMode value: $value');
  }
}
