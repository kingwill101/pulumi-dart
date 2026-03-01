/// Property value
enum TLSSecurityPolicy {
  policyMinTLS10201907("Policy-Min-TLS-1-0-2019-07"),
  policyMinTLS12201907("Policy-Min-TLS-1-2-2019-07"),
  policyMinTLS12PFS202310("Policy-Min-TLS-1-2-PFS-2023-10");

  const TLSSecurityPolicy(this.value);
  final String value;

  static TLSSecurityPolicy fromValue(String value) {
    for (final item in TLSSecurityPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TLSSecurityPolicy value: $value');
  }
}

