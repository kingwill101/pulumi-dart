/// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
enum FirewallLogConfigMetadata2 {
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const FirewallLogConfigMetadata2(this.value);
  final String value;

  static FirewallLogConfigMetadata2 fromValue(String value) {
    for (final item in FirewallLogConfigMetadata2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallLogConfigMetadata2 value: $value');
  }
}
