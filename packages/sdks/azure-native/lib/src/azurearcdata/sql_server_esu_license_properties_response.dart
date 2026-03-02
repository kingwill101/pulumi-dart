// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of SQL Server ESU license.
class SqlServerEsuLicensePropertiesResponse {
  /// The timestamp of the activation of the SqlServerEsuLicense in ISO 8601 date-time format.
  final pulumi.Input<String> activatedAt;
  /// The activation state of the license.
  final pulumi.Input<String> activationState;
  /// SQL Server ESU license type.
  final pulumi.Input<String> billingPlan;
  /// The number of total cores of the license covers.
  final pulumi.Input<int> physicalCores;
  /// The Azure scope to which the license will apply.
  final pulumi.Input<String> scopeType;
  /// The tenantId the SQL Server ESU license resource subscription resides in.
  final pulumi.Input<String> tenantId;
  /// The timestamp of the termination of the SqlServerEsuLicense in ISO 8601 date-time format.
  final pulumi.Input<String> terminatedAt;
  /// The unique ID of this license. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String> uniqueId;
  /// The SQL Server version the license covers.
  final pulumi.Input<String> version;

  /// Creates a new [SqlServerEsuLicensePropertiesResponse].
  /// [activatedAt] The timestamp of the activation of the SqlServerEsuLicense in ISO 8601 date-time format.
  /// [activationState] The activation state of the license.
  /// [billingPlan] SQL Server ESU license type.
  /// [physicalCores] The number of total cores of the license covers.
  /// [scopeType] The Azure scope to which the license will apply.
  /// [tenantId] The tenantId the SQL Server ESU license resource subscription resides in.
  /// [terminatedAt] The timestamp of the termination of the SqlServerEsuLicense in ISO 8601 date-time format.
  /// [uniqueId] The unique ID of this license. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).
  /// [version] The SQL Server version the license covers.
  SqlServerEsuLicensePropertiesResponse({
    required this.activatedAt,
    required this.activationState,
    required this.billingPlan,
    required this.physicalCores,
    required this.scopeType,
    required this.tenantId,
    required this.terminatedAt,
    required this.uniqueId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedAt': activatedAt,
      'activationState': activationState,
      'billingPlan': billingPlan,
      'physicalCores': physicalCores,
      'scopeType': scopeType,
      'tenantId': tenantId,
      'terminatedAt': terminatedAt,
      'uniqueId': uniqueId,
      'version': version,
    };
  }

  factory SqlServerEsuLicensePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerEsuLicensePropertiesResponse(
      activatedAt: (map['activatedAt'] as String).input(),
      activationState: (map['activationState'] as String).input(),
      billingPlan: (map['billingPlan'] as String).input(),
      physicalCores: (map['physicalCores'] as int).input(),
      scopeType: (map['scopeType'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      terminatedAt: (map['terminatedAt'] as String).input(),
      uniqueId: (map['uniqueId'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

