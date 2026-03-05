/// Gets or sets the azure PAAS SQL instance type.
enum AzureSqlDataBaseType {
  unknown("Unknown"),
  automatic("Automatic"),
  singleDatabase("SingleDatabase"),
  elasticPool("ElasticPool");

  const AzureSqlDataBaseType(this.wireValue);
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

