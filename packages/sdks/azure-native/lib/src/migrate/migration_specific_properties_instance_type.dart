/// Discriminator for migration specific properties.
enum MigrationSpecificPropertiesInstanceType {
  serverMigration("ServerMigration");

  const MigrationSpecificPropertiesInstanceType(this.wireValue);
  final String wireValue;

  static MigrationSpecificPropertiesInstanceType fromValue(String value) {
    for (final item in MigrationSpecificPropertiesInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MigrationSpecificPropertiesInstanceType value: $value',
    );
  }
}
