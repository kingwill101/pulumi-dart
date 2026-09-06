import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the type of vault.
enum ReplicationVaultType implements pulumi.PulumiEnum<String> {
  valueDisasterRecovery("DisasterRecovery"),
  valueMigrate("Migrate");

  const ReplicationVaultType(this.wireValue);
  @override
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
