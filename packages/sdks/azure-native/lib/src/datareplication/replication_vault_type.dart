/// Gets or sets the type of vault.
enum ReplicationVaultType {
  valueDisasterRecovery("DisasterRecovery"),
  valueMigrate("Migrate");

  const ReplicationVaultType(this.value);
  final String value;

  static ReplicationVaultType fromValue(String value) {
    for (final item in ReplicationVaultType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationVaultType value: $value');
  }
}

