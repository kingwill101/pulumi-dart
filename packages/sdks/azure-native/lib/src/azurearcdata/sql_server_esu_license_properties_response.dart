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
  const SqlServerEsuLicensePropertiesResponse({
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
      activatedAt: pulumi.Input.fromValue(map['activatedAt'] as String),
      activationState: pulumi.Input.fromValue(map['activationState'] as String),
      billingPlan: pulumi.Input.fromValue(map['billingPlan'] as String),
      physicalCores: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['physicalCores'])),
      scopeType: pulumi.Input.fromValue(map['scopeType'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      terminatedAt: pulumi.Input.fromValue(map['terminatedAt'] as String),
      uniqueId: pulumi.Input.fromValue(map['uniqueId'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
