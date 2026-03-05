enum RoleType {
  user("user"),
  admin("admin");

  const RoleType(this.wireValue);
  final String wireValue;

  static RoleType fromValue(String value) {
    for (final item in RoleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleType value: $value');
  }
}

