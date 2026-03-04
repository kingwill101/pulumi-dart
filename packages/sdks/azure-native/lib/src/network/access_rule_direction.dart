/// Direction that specifies whether the access rules is inbound/outbound.
enum AccessRuleDirection {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const AccessRuleDirection(this.wireValue);
  final String wireValue;

  static AccessRuleDirection fromValue(String value) {
    for (final item in AccessRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessRuleDirection value: $value');
  }
}
