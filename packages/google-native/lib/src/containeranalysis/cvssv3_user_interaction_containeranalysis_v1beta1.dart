enum CVSSv3UserInteractionContaineranalysisV1beta1 {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSv3UserInteractionContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSv3UserInteractionContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3UserInteractionContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CVSSv3UserInteractionContaineranalysisV1beta1 value: $value',
    );
  }
}
