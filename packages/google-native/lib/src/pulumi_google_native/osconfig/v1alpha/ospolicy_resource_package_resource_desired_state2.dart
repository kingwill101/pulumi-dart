/// Required. The desired state the agent should maintain for this package.
enum OSPolicyResourcePackageResourceDesiredState2 {
  desiredStateUnspecified("DESIRED_STATE_UNSPECIFIED"),
  installed("INSTALLED"),
  removed("REMOVED");

  const OSPolicyResourcePackageResourceDesiredState2(this.value);
  final String value;

  static OSPolicyResourcePackageResourceDesiredState2 fromValue(String value) {
    for (final item in OSPolicyResourcePackageResourceDesiredState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown OSPolicyResourcePackageResourceDesiredState2 value: $value');
  }
}
