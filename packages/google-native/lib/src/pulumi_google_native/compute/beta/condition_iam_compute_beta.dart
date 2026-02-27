/// This is deprecated and has no effect. Do not use.
enum ConditionIamComputeBeta {
  approver("APPROVER"),
  attribution("ATTRIBUTION"),
  authority("AUTHORITY"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION"),
  justificationType("JUSTIFICATION_TYPE"),
  noAttr("NO_ATTR"),
  securityRealm("SECURITY_REALM");

  const ConditionIamComputeBeta(this.value);
  final String value;

  static ConditionIamComputeBeta fromValue(String value) {
    for (final item in ConditionIamComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIamComputeBeta value: $value');
  }
}
