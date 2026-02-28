/// Defined in CVSS v3
enum CVSSUserInteractionContaineranalysisV1beta1 {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSUserInteractionContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSUserInteractionContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSUserInteractionContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CVSSUserInteractionContaineranalysisV1beta1 value: $value');
  }
}
