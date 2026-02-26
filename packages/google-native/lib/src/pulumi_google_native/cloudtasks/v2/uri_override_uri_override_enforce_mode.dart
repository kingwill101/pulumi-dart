/// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
enum UriOverrideUriOverrideEnforceMode {
  uriOverrideEnforceModeUnspecified("URI_OVERRIDE_ENFORCE_MODE_UNSPECIFIED"),
  ifNotExists("IF_NOT_EXISTS"),
  always("ALWAYS");

  const UriOverrideUriOverrideEnforceMode(this.value);
  final String value;

  static UriOverrideUriOverrideEnforceMode fromValue(String value) {
    for (final item in UriOverrideUriOverrideEnforceMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown UriOverrideUriOverrideEnforceMode value: $value');
  }
}
