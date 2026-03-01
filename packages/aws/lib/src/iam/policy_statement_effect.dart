/// Indicate whether the policy allows or denies access.
enum PolicyStatementEffect {
  aLLOW("Allow"),
  dENY("Deny");

  const PolicyStatementEffect(this.value);
  final String value;

  static PolicyStatementEffect fromValue(String value) {
    for (final item in PolicyStatementEffect.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyStatementEffect value: $value');
  }
}

