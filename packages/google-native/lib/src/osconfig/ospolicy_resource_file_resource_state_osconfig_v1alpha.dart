/// Required. Desired state of the file.
enum OSPolicyResourceFileResourceStateOsconfigV1alpha {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  present("PRESENT"),
  absent("ABSENT"),
  contentsMatch("CONTENTS_MATCH");

  const OSPolicyResourceFileResourceStateOsconfigV1alpha(this.value);
  final String value;

  static OSPolicyResourceFileResourceStateOsconfigV1alpha fromValue(
    String value,
  ) {
    for (final item
        in OSPolicyResourceFileResourceStateOsconfigV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OSPolicyResourceFileResourceStateOsconfigV1alpha value: $value',
    );
  }
}
