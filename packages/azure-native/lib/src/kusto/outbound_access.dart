/// Indicates whether outbound access is permitted for the specified URI pattern.
enum OutboundAccess {
  valueAllow("Allow"),
  valueDeny("Deny");

  const OutboundAccess(this.value);
  final String value;

  static OutboundAccess fromValue(String value) {
    for (final item in OutboundAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutboundAccess value: $value');
  }
}

