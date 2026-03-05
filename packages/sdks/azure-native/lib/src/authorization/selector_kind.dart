/// The selector kind.
enum SelectorKind {
  valueResourceLocation("resourceLocation"),
  valueResourceType("resourceType"),
  valueResourceWithoutLocation("resourceWithoutLocation"),
  valuePolicyDefinitionReferenceId("policyDefinitionReferenceId");

  const SelectorKind(this.wireValue);
  final String wireValue;

  static SelectorKind fromValue(String value) {
    for (final item in SelectorKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SelectorKind value: $value');
  }
}

