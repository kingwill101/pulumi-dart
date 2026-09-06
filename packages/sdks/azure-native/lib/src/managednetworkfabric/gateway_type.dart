import 'package:pulumi/pulumi.dart' as pulumi;

/// Gateway Type of the resource.
enum GatewayType implements pulumi.PulumiEnum<String> {
  valueInfrastructure("Infrastructure"),
  valueWorkload("Workload");

  const GatewayType(this.wireValue);
  @override
  final String wireValue;

  static GatewayType fromValue(String value) {
    for (final item in GatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType value: $value');
  }
}
