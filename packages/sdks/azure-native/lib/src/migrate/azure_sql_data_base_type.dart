/// Gets or sets the azure PAAS SQL instance type.
enum AzureSqlDataBaseType {
  unknown("Unknown"),
  automatic("Automatic"),
  singleDatabase("SingleDatabase"),
  elasticPool("ElasticPool");

  const AzureSqlDataBaseType(this.value);
  final String value;

  static AzureSqlDataBaseType fromValue(String value) {
    for (final item in AzureSqlDataBaseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlDataBaseType value: $value');
  }
}

