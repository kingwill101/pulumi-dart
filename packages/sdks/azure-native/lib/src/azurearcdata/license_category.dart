/// This property represents the choice between SQL Server Core and ESU licenses.
enum LicenseCategory {
  valueCore("Core");

  const LicenseCategory(this.value);
  final String value;

  static LicenseCategory fromValue(String value) {
    for (final item in LicenseCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseCategory value: $value');
  }
}

