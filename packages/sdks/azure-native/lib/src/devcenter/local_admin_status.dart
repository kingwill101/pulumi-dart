/// Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
enum LocalAdminStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const LocalAdminStatus(this.value);
  final String value;

  static LocalAdminStatus fromValue(String value) {
    for (final item in LocalAdminStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalAdminStatus value: $value');
  }
}

