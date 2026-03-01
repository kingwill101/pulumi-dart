/// The license type to apply for this managed instance.
enum ArcSqlManagedInstanceLicenseType {
  valueBasePrice("BasePrice"),
  valueLicenseIncluded("LicenseIncluded"),
  valueDisasterRecovery("DisasterRecovery");

  const ArcSqlManagedInstanceLicenseType(this.value);
  final String value;

  static ArcSqlManagedInstanceLicenseType fromValue(String value) {
    for (final item in ArcSqlManagedInstanceLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArcSqlManagedInstanceLicenseType value: $value');
  }
}

