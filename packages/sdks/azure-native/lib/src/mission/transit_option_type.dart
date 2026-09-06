import 'package:pulumi/pulumi.dart' as pulumi;

/// Transit Option Type.
enum TransitOptionType implements pulumi.PulumiEnum<String> {
  expressRoute("ExpressRoute"),
  gateway("Gateway"),
  peering("Peering");

  const TransitOptionType(this.wireValue);
  @override
  final String wireValue;

  static TransitOptionType fromValue(String value) {
    for (final item in TransitOptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransitOptionType value: $value');
  }
}
