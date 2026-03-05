/// Role status.
enum RoleStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const RoleStatus(this.wireValue);
  final String wireValue;

  static RoleStatus fromValue(String value) {
    for (final item in RoleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleStatus value: $value');
  }
}

