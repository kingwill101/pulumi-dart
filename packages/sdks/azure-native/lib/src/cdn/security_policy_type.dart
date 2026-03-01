/// The type of the Security policy to create.
enum SecurityPolicyType {
  webApplicationFirewall("WebApplicationFirewall");

  const SecurityPolicyType(this.value);
  final String value;

  static SecurityPolicyType fromValue(String value) {
    for (final item in SecurityPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyType value: $value');
  }
}

