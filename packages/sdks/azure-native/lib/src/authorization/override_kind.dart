/// The override kind.
enum OverrideKind {
  valuePolicyEffect("policyEffect"),
  valueDefinitionVersion("definitionVersion");

  const OverrideKind(this.wireValue);
  final String wireValue;

  static OverrideKind fromValue(String value) {
    for (final item in OverrideKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OverrideKind value: $value');
  }
}
