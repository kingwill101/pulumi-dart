/// The sku type.
enum SkuType {
  valueUnknown("Unknown"),
  valueEvolvedPacketCore("EvolvedPacketCore"),
  valueSDWAN("SDWAN"),
  valueFirewall("Firewall");

  const SkuType(this.value);
  final String value;

  static SkuType fromValue(String value) {
    for (final item in SkuType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuType value: $value');
  }
}

