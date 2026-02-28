/// Resource type for the Dynamic Group Query
enum DynamicGroupQueryResourceType {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  user("USER");

  const DynamicGroupQueryResourceType(this.value);
  final String value;

  static DynamicGroupQueryResourceType fromValue(String value) {
    for (final item in DynamicGroupQueryResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicGroupQueryResourceType value: $value');
  }
}
