/// Discriminator for migration specific properties.
enum MigrationSpecificPropertiesInstanceType {
  serverMigration("ServerMigration");

  const MigrationSpecificPropertiesInstanceType(this.value);
  final String value;

  static MigrationSpecificPropertiesInstanceType fromValue(String value) {
    for (final item in MigrationSpecificPropertiesInstanceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationSpecificPropertiesInstanceType value: $value');
  }
}

