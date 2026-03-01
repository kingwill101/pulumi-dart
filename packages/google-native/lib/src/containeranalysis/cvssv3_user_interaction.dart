enum CVSSv3UserInteraction {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSv3UserInteraction(this.value);
  final String value;

  static CVSSv3UserInteraction fromValue(String value) {
    for (final item in CVSSv3UserInteraction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3UserInteraction value: $value');
  }
}
