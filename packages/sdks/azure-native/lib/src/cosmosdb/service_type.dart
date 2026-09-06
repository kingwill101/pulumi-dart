import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceType for the service.
enum ServiceType implements pulumi.PulumiEnum<String> {
  valueSqlDedicatedGateway("SqlDedicatedGateway"),
  valueDataTransfer("DataTransfer"),
  valueGraphAPICompute("GraphAPICompute"),
  valueMaterializedViewsBuilder("MaterializedViewsBuilder");

  const ServiceType(this.wireValue);
  @override
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
