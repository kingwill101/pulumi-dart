/// The type of trust policy.
enum TrustPolicyType {
  valueNotary("Notary");

  const TrustPolicyType(this.value);
  final String value;

  static TrustPolicyType fromValue(String value) {
    for (final item in TrustPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrustPolicyType value: $value');
  }
}

