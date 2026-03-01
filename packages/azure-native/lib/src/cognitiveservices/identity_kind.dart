/// Specifies the kind of Entra identity described by this object.
enum IdentityKind {
  valueAgentBlueprint("AgentBlueprint"),
  valueAgentInstance("AgentInstance"),
  valueAgenticUser("AgenticUser"),
  valueManaged("Managed"),
  valueNone("None");

  const IdentityKind(this.value);
  final String value;

  static IdentityKind fromValue(String value) {
    for (final item in IdentityKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityKind value: $value');
  }
}

