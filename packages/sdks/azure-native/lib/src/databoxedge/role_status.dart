/// Role status.
enum RoleStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const RoleStatus(this.value);
  final String value;

  static RoleStatus fromValue(String value) {
    for (final item in RoleStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleStatus value: $value');
  }
}

