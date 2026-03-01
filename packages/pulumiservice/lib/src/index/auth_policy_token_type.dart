enum AuthPolicyTokenType {
  valuePersonal("personal"),
  valueTeam("team"),
  valueOrganization("organization"),
  valueRunner("runner");

  const AuthPolicyTokenType(this.value);
  final String value;

  static AuthPolicyTokenType fromValue(String value) {
    for (final item in AuthPolicyTokenType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthPolicyTokenType value: $value');
  }
}

