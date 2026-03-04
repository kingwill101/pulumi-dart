/// The sku type.
enum SkuType {
  valueUnknown("Unknown"),
  valueEvolvedPacketCore("EvolvedPacketCore"),
  valueSDWAN("SDWAN"),
  valueFirewall("Firewall");

  const SkuType(this.wireValue);
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
