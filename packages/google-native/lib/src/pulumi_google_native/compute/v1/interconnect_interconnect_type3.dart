/// Type of interconnect, which can take one of the following values: - PARTNER: A partner-managed interconnection shared between customers though a partner. - DEDICATED: A dedicated physical interconnection with the customer. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
enum InterconnectInterconnectType3 {
  dedicated("DEDICATED"),
  itPrivate("IT_PRIVATE"),
  partner("PARTNER");

  const InterconnectInterconnectType3(this.value);
  final String value;

  static InterconnectInterconnectType3 fromValue(String value) {
    for (final item in InterconnectInterconnectType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectInterconnectType3 value: $value');
  }
}
