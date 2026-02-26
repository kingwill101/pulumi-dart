/// Trusted attributes supplied by the IAM system.
enum ConditionIam5 {
  noAttr("NO_ATTR"),
  authority("AUTHORITY"),
  attribution("ATTRIBUTION"),
  securityRealm("SECURITY_REALM"),
  approver("APPROVER"),
  justificationType("JUSTIFICATION_TYPE"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION");

  const ConditionIam5(this.value);
  final String value;

  static ConditionIam5 fromValue(String value) {
    for (final item in ConditionIam5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIam5 value: $value');
  }
}
