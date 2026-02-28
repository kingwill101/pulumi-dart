/// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
enum UriOverrideSchemeCloudtasksV2beta3 {
  schemeUnspecified("SCHEME_UNSPECIFIED"),
  http("HTTP"),
  https("HTTPS");

  const UriOverrideSchemeCloudtasksV2beta3(this.value);
  final String value;

  static UriOverrideSchemeCloudtasksV2beta3 fromValue(String value) {
    for (final item in UriOverrideSchemeCloudtasksV2beta3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown UriOverrideSchemeCloudtasksV2beta3 value: $value');
  }
}
