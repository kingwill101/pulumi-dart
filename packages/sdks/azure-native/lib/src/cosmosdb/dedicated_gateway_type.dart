/// DedicatedGatewayType for the service.
enum DedicatedGatewayType {
  valueIntegratedCache("IntegratedCache"),
  valueDistributedQuery("DistributedQuery");

  const DedicatedGatewayType(this.wireValue);
  final String wireValue;

  static DedicatedGatewayType fromValue(String value) {
    for (final item in DedicatedGatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DedicatedGatewayType value: $value');
  }
}

