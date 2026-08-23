/// Specifies the kind of Entra identity described by this object.
enum IdentityKind {
  agentBlueprint("AgentBlueprint"),
  agentInstance("AgentInstance"),
  agenticUser("AgenticUser"),
  managed("Managed"),
  none("None");

  const IdentityKind(this.wireValue);
  final String wireValue;

  static IdentityKind fromValue(String value) {
    for (final item in IdentityKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityKind value: $value');
  }
}
