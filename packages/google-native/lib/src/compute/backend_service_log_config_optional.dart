/// Deprecated in favor of optionalMode. This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
enum BackendServiceLogConfigOptional {
  custom("CUSTOM"),
  excludeAllOptional("EXCLUDE_ALL_OPTIONAL"),
  includeAllOptional("INCLUDE_ALL_OPTIONAL"),
  unspecifiedOptionalMode("UNSPECIFIED_OPTIONAL_MODE");

  const BackendServiceLogConfigOptional(this.value);
  final String value;

  static BackendServiceLogConfigOptional fromValue(String value) {
    for (final item in BackendServiceLogConfigOptional.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BackendServiceLogConfigOptional value: $value');
  }
}
