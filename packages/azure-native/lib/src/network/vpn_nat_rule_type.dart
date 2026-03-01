/// The type of NAT rule for VPN NAT.
enum VpnNatRuleType {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const VpnNatRuleType(this.value);
  final String value;

  static VpnNatRuleType fromValue(String value) {
    for (final item in VpnNatRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnNatRuleType value: $value');
  }
}

