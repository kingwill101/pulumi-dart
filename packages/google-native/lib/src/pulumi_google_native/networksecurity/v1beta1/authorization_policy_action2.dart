/// Required. The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
enum AuthorizationPolicyAction2 {
  actionUnspecified("ACTION_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const AuthorizationPolicyAction2(this.value);
  final String value;

  static AuthorizationPolicyAction2 fromValue(String value) {
    for (final item in AuthorizationPolicyAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationPolicyAction2 value: $value');
  }
}
