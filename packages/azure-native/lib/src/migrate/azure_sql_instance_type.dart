/// Gets or sets the azure PAAS SQL instance type.
enum AzureSqlInstanceType {
  unknown("Unknown"),
  automatic("Automatic"),
  singleInstance("SingleInstance"),
  instancePools("InstancePools");

  const AzureSqlInstanceType(this.value);
  final String value;

  static AzureSqlInstanceType fromValue(String value) {
    for (final item in AzureSqlInstanceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlInstanceType value: $value');
  }
}

