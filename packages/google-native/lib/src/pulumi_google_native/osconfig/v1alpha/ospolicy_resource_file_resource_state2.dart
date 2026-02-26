/// Required. Desired state of the file.
enum OSPolicyResourceFileResourceState2 {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  present("PRESENT"),
  absent("ABSENT"),
  contentsMatch("CONTENTS_MATCH");

  const OSPolicyResourceFileResourceState2(this.value);
  final String value;

  static OSPolicyResourceFileResourceState2 fromValue(String value) {
    for (final item in OSPolicyResourceFileResourceState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown OSPolicyResourceFileResourceState2 value: $value');
  }
}
