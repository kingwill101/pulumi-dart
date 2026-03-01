enum ResourceTypeExtendedLocationPolicy {
  notSpecified("NotSpecified"),
  all("All");

  const ResourceTypeExtendedLocationPolicy(this.value);
  final String value;

  static ResourceTypeExtendedLocationPolicy fromValue(String value) {
    for (final item in ResourceTypeExtendedLocationPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeExtendedLocationPolicy value: $value');
  }
}

