import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the azure PAAS SQL instance type.
enum AzureSqlDataBaseType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  automatic("Automatic"),
  singleDatabase("SingleDatabase"),
  elasticPool("ElasticPool");

  const AzureSqlDataBaseType(this.wireValue);
  @override
  final String wireValue;

  static AzureSqlDataBaseType fromValue(String value) {
    for (final item in AzureSqlDataBaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlDataBaseType value: $value');
  }
}
