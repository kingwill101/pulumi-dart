// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of SQL Server License.
class SqlServerLicensePropertiesResponse {
  /// The activation state of the license.
  final pulumi.Input<String> activationState;
  /// SQL Server license type.
  final pulumi.Input<String> billingPlan;
  /// The timestamp of the most recent activation of the SqlServerLicense.
  final pulumi.Input<String> lastActivatedAt;
  /// The timestamp of the most recent deactivation of the SqlServerLicense.
  final pulumi.Input<String> lastDeactivatedAt;
  /// This property represents the choice between SQL Server Core and ESU licenses.
  final pulumi.Input<String> licenseCategory;
  /// The number of total cores of the license covers.
  final pulumi.Input<int> physicalCores;
  /// The Azure scope to which the license will apply.
  final pulumi.Input<String> scopeType;
  /// The tenantId the SQL Server license resource subscription resides in.
  final pulumi.Input<String> tenantId;

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
      activationState: pulumi.Input.fromValue(map['activationState'] as String),
      billingPlan: pulumi.Input.fromValue(map['billingPlan'] as String),
      lastActivatedAt: pulumi.Input.fromValue(map['lastActivatedAt'] as String),
      lastDeactivatedAt: pulumi.Input.fromValue(map['lastDeactivatedAt'] as String),
      licenseCategory: pulumi.Input.fromValue(map['licenseCategory'] as String),
      physicalCores: pulumi.Input.fromValue(map['physicalCores'] as int),
      scopeType: pulumi.Input.fromValue(map['scopeType'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

