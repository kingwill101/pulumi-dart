enum DynamicGroupQueryResourceType2 {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  user("USER");

  const DynamicGroupQueryResourceType2(this.value);
  final String value;

  static DynamicGroupQueryResourceType2 fromValue(String value) {
    for (final item in DynamicGroupQueryResourceType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicGroupQueryResourceType2 value: $value');
  }
}
