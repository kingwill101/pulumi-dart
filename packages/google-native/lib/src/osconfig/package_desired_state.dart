/// The desired_state the agent should maintain for this package. The default is to ensure the package is installed.
enum PackageDesiredState {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  updated("UPDATED"),
  removed("REMOVED");

  const PackageDesiredState(this.value);
  final String value;

  static PackageDesiredState fromValue(String value) {
    for (final item in PackageDesiredState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageDesiredState value: $value');
  }
}

