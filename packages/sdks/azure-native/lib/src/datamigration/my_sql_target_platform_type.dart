import 'package:pulumi/pulumi.dart' as pulumi;

/// Target Platform for the migration
enum MySqlTargetPlatformType implements pulumi.PulumiEnum<String> {
  valueSqlServer("SqlServer"),
  valueAzureDbForMySQL("AzureDbForMySQL");

  const MySqlTargetPlatformType(this.wireValue);
  @override
  final String wireValue;

  static MySqlTargetPlatformType fromValue(String value) {
    for (final item in MySqlTargetPlatformType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MySqlTargetPlatformType value: $value');
  }
}
