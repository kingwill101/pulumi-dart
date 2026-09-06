import 'package:pulumi/pulumi.dart' as pulumi;

/// The license type to apply for this managed instance.
enum ArcSqlManagedInstanceLicenseType implements pulumi.PulumiEnum<String> {
  valueBasePrice("BasePrice"),
  valueLicenseIncluded("LicenseIncluded"),
  valueDisasterRecovery("DisasterRecovery");

  const ArcSqlManagedInstanceLicenseType(this.wireValue);
  @override
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
