import 'package:pulumi/pulumi.dart' as pulumi;

/// Discriminator for migration specific properties.
enum MigrationSpecificPropertiesInstanceType implements pulumi.PulumiEnum<String> {
  serverMigration("ServerMigration");

  const MigrationSpecificPropertiesInstanceType(this.wireValue);
  @override
  final String wireValue;

  static MigrationSpecificPropertiesInstanceType fromValue(String value) {
    for (final item in MigrationSpecificPropertiesInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationSpecificPropertiesInstanceType value: $value');
  }
}
