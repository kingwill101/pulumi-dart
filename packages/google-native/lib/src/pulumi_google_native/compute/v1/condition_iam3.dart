/// This is deprecated and has no effect. Do not use.
enum ConditionIam3 {
  approver("APPROVER"),
  attribution("ATTRIBUTION"),
  authority("AUTHORITY"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION"),
  justificationType("JUSTIFICATION_TYPE"),
  noAttr("NO_ATTR"),
  securityRealm("SECURITY_REALM");

  const ConditionIam3(this.value);
  final String value;

  static ConditionIam3 fromValue(String value) {
    for (final item in ConditionIam3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIam3 value: $value');
  }
}
