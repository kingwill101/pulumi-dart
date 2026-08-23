/// The type of the Security policy to create.
enum SecurityPolicyType {
  webApplicationFirewall("WebApplicationFirewall");

  const SecurityPolicyType(this.wireValue);
  final String wireValue;

  static SecurityPolicyType fromValue(String value) {
    for (final item in SecurityPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyType value: $value');
  }
}
