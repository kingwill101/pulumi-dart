/// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
enum BackendServiceLogConfigOptionalMode3 {
  custom("CUSTOM"),
  excludeAllOptional("EXCLUDE_ALL_OPTIONAL"),
  includeAllOptional("INCLUDE_ALL_OPTIONAL");

  const BackendServiceLogConfigOptionalMode3(this.value);
  final String value;

  static BackendServiceLogConfigOptionalMode3 fromValue(String value) {
    for (final item in BackendServiceLogConfigOptionalMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BackendServiceLogConfigOptionalMode3 value: $value');
  }
}
