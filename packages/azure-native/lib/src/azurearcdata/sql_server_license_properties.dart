// ignore_for_file: unused_element, unnecessary_cast


/// Properties of SQL Server License.
class SqlServerLicenseProperties {
  /// The activation state of the license.
  final String activationState;
  /// SQL Server license type.
  final String billingPlan;
  /// This property represents the choice between SQL Server Core and ESU licenses.
  final String licenseCategory;
  /// The number of total cores of the license covers.
  final int physicalCores;
  /// The Azure scope to which the license will apply.
  final String scopeType;

  /// Creates a new [SqlServerLicenseProperties].
  /// [activationState] The activation state of the license.
  /// [billingPlan] SQL Server license type.
  /// [licenseCategory] This property represents the choice between SQL Server Core and ESU licenses.
  /// [physicalCores] The number of total cores of the license covers.
  /// [scopeType] The Azure scope to which the license will apply.
  SqlServerLicenseProperties({
    required this.activationState,
    required this.billingPlan,
    required this.licenseCategory,
    required this.physicalCores,
    required this.scopeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': activationState,
      'billingPlan': billingPlan,
      'licenseCategory': licenseCategory,
      'physicalCores': physicalCores,
      'scopeType': scopeType,
    };
  }

  factory SqlServerLicenseProperties.fromMap(Map<String, dynamic> map) {
    return SqlServerLicenseProperties(
      activationState: map['activationState'] as String,
      billingPlan: map['billingPlan'] as String,
      licenseCategory: map['licenseCategory'] as String,
      physicalCores: map['physicalCores'] as int,
      scopeType: map['scopeType'] as String,
    );
  }
}

