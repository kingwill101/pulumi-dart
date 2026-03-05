/// This property represents the choice between SQL Server Core and ESU licenses.
enum LicenseCategory {
  valueCore("Core");

  const LicenseCategory(this.wireValue);
  final String wireValue;

  static LicenseCategory fromValue(String value) {
    for (final item in LicenseCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseCategory value: $value');
  }
}

