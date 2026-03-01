/// Mode for Target connectivity.
enum IscsiTargetAclMode {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const IscsiTargetAclMode(this.value);
  final String value;

  static IscsiTargetAclMode fromValue(String value) {
    for (final item in IscsiTargetAclMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IscsiTargetAclMode value: $value');
  }
}

