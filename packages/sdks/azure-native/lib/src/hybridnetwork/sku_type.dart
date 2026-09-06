import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku type.
enum SkuType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueEvolvedPacketCore("EvolvedPacketCore"),
  valueSDWAN("SDWAN"),
  valueFirewall("Firewall");

  const SkuType(this.wireValue);
  @override
  final String wireValue;

  static SkuType fromValue(String value) {
    for (final item in SkuType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuType value: $value');
  }
}
