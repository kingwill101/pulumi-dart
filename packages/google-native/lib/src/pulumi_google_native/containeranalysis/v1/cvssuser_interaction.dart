enum CVSSUserInteraction {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSUserInteraction(this.value);
  final String value;

  static CVSSUserInteraction fromValue(String value) {
    for (final item in CVSSUserInteraction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSUserInteraction value: $value');
  }
}
