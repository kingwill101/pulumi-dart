/// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
enum FirewallLogConfigMetadata {
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const FirewallLogConfigMetadata(this.value);
  final String value;

  static FirewallLogConfigMetadata fromValue(String value) {
    for (final item in FirewallLogConfigMetadata.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallLogConfigMetadata value: $value');
  }
}

