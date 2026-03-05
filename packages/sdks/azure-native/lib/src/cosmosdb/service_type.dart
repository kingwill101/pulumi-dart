/// ServiceType for the service.
enum ServiceType {
  valueSqlDedicatedGateway("SqlDedicatedGateway"),
  valueDataTransfer("DataTransfer"),
  valueGraphAPICompute("GraphAPICompute"),
  valueMaterializedViewsBuilder("MaterializedViewsBuilder");

  const ServiceType(this.wireValue);
  final String wireValue;

  static ServiceType fromValue(String value) {
    for (final item in ServiceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceType value: $value');
  }
}

