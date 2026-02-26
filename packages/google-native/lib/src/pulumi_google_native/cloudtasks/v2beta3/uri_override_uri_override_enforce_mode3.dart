/// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
enum UriOverrideUriOverrideEnforceMode3 {
  uriOverrideEnforceModeUnspecified("URI_OVERRIDE_ENFORCE_MODE_UNSPECIFIED"),
  ifNotExists("IF_NOT_EXISTS"),
  always("ALWAYS");

  const UriOverrideUriOverrideEnforceMode3(this.value);
  final String value;

  static UriOverrideUriOverrideEnforceMode3 fromValue(String value) {
    for (final item in UriOverrideUriOverrideEnforceMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown UriOverrideUriOverrideEnforceMode3 value: $value');
  }
}
