/// DedicatedGatewayType for the service.
enum DedicatedGatewayType {
  valueIntegratedCache("IntegratedCache"),
  valueDistributedQuery("DistributedQuery");

  const DedicatedGatewayType(this.value);
  final String value;

  static DedicatedGatewayType fromValue(String value) {
    for (final item in DedicatedGatewayType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DedicatedGatewayType value: $value');
  }
}

