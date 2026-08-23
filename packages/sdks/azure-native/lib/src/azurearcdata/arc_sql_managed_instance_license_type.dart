/// The license type to apply for this managed instance.
enum ArcSqlManagedInstanceLicenseType {
  valueBasePrice("BasePrice"),
  valueLicenseIncluded("LicenseIncluded"),
  valueDisasterRecovery("DisasterRecovery");

  const ArcSqlManagedInstanceLicenseType(this.wireValue);
  final String wireValue;

  static ArcSqlManagedInstanceLicenseType fromValue(String value) {
    for (final item in ArcSqlManagedInstanceLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArcSqlManagedInstanceLicenseType value: $value');
  }
}
