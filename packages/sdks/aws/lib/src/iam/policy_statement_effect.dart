/// Indicate whether the policy allows or denies access.
enum PolicyStatementEffect {
  aLLOW("Allow"),
  dENY("Deny");

  const PolicyStatementEffect(this.wireValue);
  final String wireValue;

  static PolicyStatementEffect fromValue(String value) {
    for (final item in PolicyStatementEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyStatementEffect value: $value');
  }
}

