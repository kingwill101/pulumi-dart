/// This field can only be specified for a particular firewall rule if logging is enabled for that rule. This field denotes whether to include or exclude metadata for firewall logs.
enum FirewallLogConfigMetadata3 {
  excludeAllMetadata("EXCLUDE_ALL_METADATA"),
  includeAllMetadata("INCLUDE_ALL_METADATA");

  const FirewallLogConfigMetadata3(this.value);
  final String value;

  static FirewallLogConfigMetadata3 fromValue(String value) {
    for (final item in FirewallLogConfigMetadata3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallLogConfigMetadata3 value: $value');
  }
}
