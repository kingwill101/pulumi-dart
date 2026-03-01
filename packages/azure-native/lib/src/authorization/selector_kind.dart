/// The selector kind.
enum SelectorKind {
  valueResourceLocation("resourceLocation"),
  valueResourceType("resourceType"),
  valueResourceWithoutLocation("resourceWithoutLocation"),
  valuePolicyDefinitionReferenceId("policyDefinitionReferenceId");

  const SelectorKind(this.value);
  final String value;

  static SelectorKind fromValue(String value) {
    for (final item in SelectorKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SelectorKind value: $value');
  }
}

