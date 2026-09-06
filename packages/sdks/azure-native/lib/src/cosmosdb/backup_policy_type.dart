import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the mode of backups.
enum BackupPolicyType implements pulumi.PulumiEnum<String> {
  valuePeriodic("Periodic"),
  valueContinuous("Continuous");

  const BackupPolicyType(this.wireValue);
  @override
  final String wireValue;

  static BackupPolicyType fromValue(String value) {
    for (final item in BackupPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupPolicyType value: $value');
  }
}
