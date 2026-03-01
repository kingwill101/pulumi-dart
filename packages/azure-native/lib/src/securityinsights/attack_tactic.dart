/// The severity for alerts created by this alert rule.
enum AttackTactic {
  valueReconnaissance("Reconnaissance"),
  valueResourceDevelopment("ResourceDevelopment"),
  valueInitialAccess("InitialAccess"),
  valueExecution("Execution"),
  valuePersistence("Persistence"),
  valuePrivilegeEscalation("PrivilegeEscalation"),
  valueDefenseEvasion("DefenseEvasion"),
  valueCredentialAccess("CredentialAccess"),
  valueDiscovery("Discovery"),
  valueLateralMovement("LateralMovement"),
  valueCollection("Collection"),
  valueExfiltration("Exfiltration"),
  valueCommandAndControl("CommandAndControl"),
  valueImpact("Impact"),
  valuePreAttack("PreAttack"),
  valueImpairProcessControl("ImpairProcessControl"),
  valueInhibitResponseFunction("InhibitResponseFunction");

  const AttackTactic(this.value);
  final String value;

  static AttackTactic fromValue(String value) {
    for (final item in AttackTactic.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttackTactic value: $value');
  }
}

