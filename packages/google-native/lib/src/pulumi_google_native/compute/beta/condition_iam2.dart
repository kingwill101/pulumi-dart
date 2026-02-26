/// This is deprecated and has no effect. Do not use.
enum ConditionIam2 {
  approver("APPROVER"),
  attribution("ATTRIBUTION"),
  authority("AUTHORITY"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION"),
  justificationType("JUSTIFICATION_TYPE"),
  noAttr("NO_ATTR"),
  securityRealm("SECURITY_REALM");

  const ConditionIam2(this.value);
  final String value;

  static ConditionIam2 fromValue(String value) {
    for (final item in ConditionIam2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIam2 value: $value');
  }
}
