/// Defined in CVSS v3
enum CVSSUserInteraction3 {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSUserInteraction3(this.value);
  final String value;

  static CVSSUserInteraction3 fromValue(String value) {
    for (final item in CVSSUserInteraction3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSUserInteraction3 value: $value');
  }
}
