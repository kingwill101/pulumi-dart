/// Defined in CVSS v3
enum CVSSUserInteraction2 {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSUserInteraction2(this.value);
  final String value;

  static CVSSUserInteraction2 fromValue(String value) {
    for (final item in CVSSUserInteraction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSUserInteraction2 value: $value');
  }
}
