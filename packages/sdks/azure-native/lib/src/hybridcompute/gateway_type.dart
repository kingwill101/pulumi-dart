import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the Gateway resource.
enum GatewayType implements pulumi.PulumiEnum<String> {
  valuePublic("Public");

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
