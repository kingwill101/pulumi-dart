/// Describes the mode of backups.
enum BackupPolicyType {
  valuePeriodic("Periodic"),
  valueContinuous("Continuous");

  const BackupPolicyType(this.value);
  final String value;

  static BackupPolicyType fromValue(String value) {
    for (final item in BackupPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupPolicyType value: $value');
  }
}

