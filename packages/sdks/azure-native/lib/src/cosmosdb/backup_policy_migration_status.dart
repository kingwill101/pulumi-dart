import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the status of migration between backup policy types.
enum BackupPolicyMigrationStatus implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueInProgress("InProgress"),
  valueCompleted("Completed"),
  valueFailed("Failed");

  const BackupPolicyMigrationStatus(this.wireValue);
  @override
  final String wireValue;

  static BackupPolicyMigrationStatus fromValue(String value) {
    for (final item in BackupPolicyMigrationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupPolicyMigrationStatus value: $value');
  }
}
