/// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
enum JobVisibility2 {
  visibilityUnspecified("VISIBILITY_UNSPECIFIED"),
  accountOnly("ACCOUNT_ONLY"),
  sharedWithGoogle("SHARED_WITH_GOOGLE"),
  sharedWithPublic("SHARED_WITH_PUBLIC");

  const JobVisibility2(this.value);
  final String value;

  static JobVisibility2 fromValue(String value) {
    for (final item in JobVisibility2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobVisibility2 value: $value');
  }
}
