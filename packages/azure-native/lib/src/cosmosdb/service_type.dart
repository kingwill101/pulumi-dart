/// ServiceType for the service.
enum ServiceType {
  valueSqlDedicatedGateway("SqlDedicatedGateway"),
  valueDataTransfer("DataTransfer"),
  valueGraphAPICompute("GraphAPICompute"),
  valueMaterializedViewsBuilder("MaterializedViewsBuilder");

  const ServiceType(this.value);
  final String value;

  static ServiceType fromValue(String value) {
    for (final item in ServiceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceType value: $value');
  }
}

