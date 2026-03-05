/// The type of trust policy.
enum TrustPolicyType {
  valueNotary("Notary");

  const TrustPolicyType(this.wireValue);
  final String wireValue;

  static TrustPolicyType fromValue(String value) {
    for (final item in TrustPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrustPolicyType value: $value');
  }
}

