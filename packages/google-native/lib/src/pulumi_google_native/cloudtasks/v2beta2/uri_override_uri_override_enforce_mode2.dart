/// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
enum UriOverrideUriOverrideEnforceMode2 {
  uriOverrideEnforceModeUnspecified("URI_OVERRIDE_ENFORCE_MODE_UNSPECIFIED"),
  ifNotExists("IF_NOT_EXISTS"),
  always("ALWAYS");

  const UriOverrideUriOverrideEnforceMode2(this.value);
  final String value;

  static UriOverrideUriOverrideEnforceMode2 fromValue(String value) {
    for (final item in UriOverrideUriOverrideEnforceMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown UriOverrideUriOverrideEnforceMode2 value: $value');
  }
}
