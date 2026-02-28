/// Required. Desired state of the file.
enum OSPolicyResourceFileResourceState {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  present("PRESENT"),
  absent("ABSENT"),
  contentsMatch("CONTENTS_MATCH");

  const OSPolicyResourceFileResourceState(this.value);
  final String value;

  static OSPolicyResourceFileResourceState fromValue(String value) {
    for (final item in OSPolicyResourceFileResourceState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyResourceFileResourceState value: $value');
  }
}

