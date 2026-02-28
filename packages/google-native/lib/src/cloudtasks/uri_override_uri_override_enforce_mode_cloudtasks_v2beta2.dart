/// URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specified, it defaults to ALWAYS.
enum UriOverrideUriOverrideEnforceModeCloudtasksV2beta2 {
  uriOverrideEnforceModeUnspecified("URI_OVERRIDE_ENFORCE_MODE_UNSPECIFIED"),
  ifNotExists("IF_NOT_EXISTS"),
  always("ALWAYS");

  const UriOverrideUriOverrideEnforceModeCloudtasksV2beta2(this.value);
  final String value;

  static UriOverrideUriOverrideEnforceModeCloudtasksV2beta2 fromValue(String value) {
    for (final item in UriOverrideUriOverrideEnforceModeCloudtasksV2beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UriOverrideUriOverrideEnforceModeCloudtasksV2beta2 value: $value');
  }
}

