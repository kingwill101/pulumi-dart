/// Required. The desired state the agent should maintain for this package.
enum OSPolicyResourcePackageResourceDesiredState {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  removed("REMOVED");

  const OSPolicyResourcePackageResourceDesiredState(this.value);
  final String value;

  static OSPolicyResourcePackageResourceDesiredState fromValue(String value) {
    for (final item in OSPolicyResourcePackageResourceDesiredState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown OSPolicyResourcePackageResourceDesiredState value: $value');
  }
}
