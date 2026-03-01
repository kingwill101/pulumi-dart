/// Managed instance side link role
enum LinkRole {
  valuePrimary("Primary"),
  valueSecondary("Secondary");

  const LinkRole(this.value);
  final String value;

  static LinkRole fromValue(String value) {
    for (final item in LinkRole.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkRole value: $value');
  }
}

