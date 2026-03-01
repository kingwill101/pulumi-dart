// ignore_for_file: unused_element, unnecessary_cast


/// Properties of SQL Server License.
class SqlServerLicensePropertiesResponse {
  /// The activation state of the license.
  final String activationState;
  /// SQL Server license type.
  final String billingPlan;
  /// The timestamp of the most recent activation of the SqlServerLicense.
  final String lastActivatedAt;
  /// The timestamp of the most recent deactivation of the SqlServerLicense.
  final String lastDeactivatedAt;
  /// This property represents the choice between SQL Server Core and ESU licenses.
  final String licenseCategory;
  /// The number of total cores of the license covers.
  final int physicalCores;
  /// The Azure scope to which the license will apply.
  final String scopeType;
  /// The tenantId the SQL Server license resource subscription resides in.
  final String tenantId;

  /// Creates a new [SqlServerLicensePropertiesResponse].
  /// [activationState] The activation state of the license.
  /// [billingPlan] SQL Server license type.
  /// [lastActivatedAt] The timestamp of the most recent activation of the SqlServerLicense.
  /// [lastDeactivatedAt] The timestamp of the most recent deactivation of the SqlServerLicense.
  /// [licenseCategory] This property represents the choice between SQL Server Core and ESU licenses.
  /// [physicalCores] The number of total cores of the license covers.
  /// [scopeType] The Azure scope to which the license will apply.
  /// [tenantId] The tenantId the SQL Server license resource subscription resides in.
  SqlServerLicensePropertiesResponse({
    required this.activationState,
    required this.billingPlan,
    required this.lastActivatedAt,
    required this.lastDeactivatedAt,
    required this.licenseCategory,
    required this.physicalCores,
    required this.scopeType,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': activationState,
      'billingPlan': billingPlan,
      'lastActivatedAt': lastActivatedAt,
      'lastDeactivatedAt': lastDeactivatedAt,
      'licenseCategory': licenseCategory,
      'physicalCores': physicalCores,
      'scopeType': scopeType,
      'tenantId': tenantId,
    };
  }

  factory SqlServerLicensePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerLicensePropertiesResponse(
      activationState: map['activationState'] as String,
      billingPlan: map['billingPlan'] as String,
      lastActivatedAt: map['lastActivatedAt'] as String,
      lastDeactivatedAt: map['lastDeactivatedAt'] as String,
      licenseCategory: map['licenseCategory'] as String,
      physicalCores: map['physicalCores'] as int,
      scopeType: map['scopeType'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

