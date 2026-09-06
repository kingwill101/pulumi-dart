import 'package:pulumi/pulumi.dart' as pulumi;

/// DedicatedGatewayType for the service.
enum DedicatedGatewayType implements pulumi.PulumiEnum<String> {
  valueIntegratedCache("IntegratedCache"),
  valueDistributedQuery("DistributedQuery");

  const DedicatedGatewayType(this.wireValue);
  @override
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
