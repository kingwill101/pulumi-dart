/// Trusted attributes supplied by the IAM system.
enum ConditionIam4 {
  noAttr("NO_ATTR"),
  authority("AUTHORITY"),
  attribution("ATTRIBUTION"),
  securityRealm("SECURITY_REALM"),
  approver("APPROVER"),
  justificationType("JUSTIFICATION_TYPE"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION");

  const ConditionIam4(this.value);
  final String value;

  static ConditionIam4 fromValue(String value) {
    for (final item in ConditionIam4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIam4 value: $value');
  }
}
