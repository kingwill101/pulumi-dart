/// The principal type of the assigned principal ID.
enum PrincipalType {
  user("User"),
  group("Group"),
  servicePrincipal("ServicePrincipal"),
  foreignGroup("ForeignGroup"),
  device("Device"),
  agentUser("AgentUser"),
  agentServicePrincipal("AgentServicePrincipal");

  const PrincipalType(this.wireValue);
  final String wireValue;

  static PrincipalType fromValue(String value) {
    for (final item in PrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrincipalType value: $value');
  }
}
