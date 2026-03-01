/// The override kind.
enum OverrideKind {
  valuePolicyEffect("policyEffect"),
  valueDefinitionVersion("definitionVersion");

  const OverrideKind(this.value);
  final String value;

  static OverrideKind fromValue(String value) {
    for (final item in OverrideKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OverrideKind value: $value');
  }
}

