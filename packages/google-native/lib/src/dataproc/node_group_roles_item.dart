enum NodeGroupRolesItem {
  roleUnspecified("ROLE_UNSPECIFIED"),
  driver("DRIVER");

  const NodeGroupRolesItem(this.value);
  final String value;

  static NodeGroupRolesItem fromValue(String value) {
    for (final item in NodeGroupRolesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupRolesItem value: $value');
  }
}
