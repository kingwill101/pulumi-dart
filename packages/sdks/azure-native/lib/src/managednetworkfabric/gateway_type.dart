/// Gateway Type of the resource.
enum GatewayType {
  valueInfrastructure("Infrastructure"),
  valueWorkload("Workload");

  const GatewayType(this.value);
  final String value;

  static GatewayType fromValue(String value) {
    for (final item in GatewayType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType value: $value');
  }
}

