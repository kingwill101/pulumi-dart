/// Gets or sets the azure PAAS SQL instance type.
enum AzureSqlInstanceType {
  unknown("Unknown"),
  automatic("Automatic"),
  singleInstance("SingleInstance"),
  instancePools("InstancePools");

  const AzureSqlInstanceType(this.wireValue);
  final String wireValue;

  static AzureSqlInstanceType fromValue(String value) {
    for (final item in AzureSqlInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlInstanceType value: $value');
  }
}

