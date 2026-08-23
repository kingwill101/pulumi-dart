/// Describes the mode of backups.
enum BackupPolicyType {
  valuePeriodic("Periodic"),
  valueContinuous("Continuous");

  const BackupPolicyType(this.wireValue);
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
