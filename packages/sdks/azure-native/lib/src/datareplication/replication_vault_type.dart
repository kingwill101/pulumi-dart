/// Gets or sets the type of vault.
enum ReplicationVaultType {
  valueDisasterRecovery("DisasterRecovery"),
  valueMigrate("Migrate");

  const ReplicationVaultType(this.wireValue);
  final String wireValue;

  static ReplicationVaultType fromValue(String value) {
    for (final item in ReplicationVaultType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationVaultType value: $value');
  }
}
