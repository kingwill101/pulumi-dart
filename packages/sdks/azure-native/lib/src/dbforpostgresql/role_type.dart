enum RoleType {
  user("user"),
  admin("admin");

  const RoleType(this.value);
  final String value;

  static RoleType fromValue(String value) {
    for (final item in RoleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleType value: $value');
  }
}

