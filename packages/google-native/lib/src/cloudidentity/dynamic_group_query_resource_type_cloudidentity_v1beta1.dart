enum DynamicGroupQueryResourceTypeCloudidentityV1beta1 {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  user("USER");

  const DynamicGroupQueryResourceTypeCloudidentityV1beta1(this.value);
  final String value;

  static DynamicGroupQueryResourceTypeCloudidentityV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in DynamicGroupQueryResourceTypeCloudidentityV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DynamicGroupQueryResourceTypeCloudidentityV1beta1 value: $value',
    );
  }
}
