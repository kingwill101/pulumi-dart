/// Required. The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
enum AuthorizationPolicyActionNetworksecurityV1beta1 {
  actionUnspecified("ACTION_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const AuthorizationPolicyActionNetworksecurityV1beta1(this.value);
  final String value;

  static AuthorizationPolicyActionNetworksecurityV1beta1 fromValue(
      String value) {
    for (final item in AuthorizationPolicyActionNetworksecurityV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AuthorizationPolicyActionNetworksecurityV1beta1 value: $value');
  }
}
