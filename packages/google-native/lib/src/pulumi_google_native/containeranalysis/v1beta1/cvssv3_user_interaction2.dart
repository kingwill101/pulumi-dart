enum CVSSv3UserInteraction2 {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSv3UserInteraction2(this.value);
  final String value;

  static CVSSv3UserInteraction2 fromValue(String value) {
    for (final item in CVSSv3UserInteraction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3UserInteraction2 value: $value');
  }
}
