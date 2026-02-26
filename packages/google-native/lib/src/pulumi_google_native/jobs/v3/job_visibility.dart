/// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
enum JobVisibility {
  visibilityUnspecified("VISIBILITY_UNSPECIFIED"),
  accountOnly("ACCOUNT_ONLY"),
  sharedWithGoogle("SHARED_WITH_GOOGLE"),
  sharedWithPublic("SHARED_WITH_PUBLIC");

  const JobVisibility(this.value);
  final String value;

  static JobVisibility fromValue(String value) {
    for (final item in JobVisibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobVisibility value: $value');
  }
}
