// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of SQL Server ESU license.
class SqlServerEsuLicenseProperties {
  /// The activation state of the license.
  final pulumi.Input<String> activationState;
  /// SQL Server ESU license type.
  final pulumi.Input<String> billingPlan;
  /// The number of total cores of the license covers.
  final pulumi.Input<int> physicalCores;
  /// The Azure scope to which the license will apply.
  final pulumi.Input<String> scopeType;
  /// The SQL Server version the license covers.
  final pulumi.Input<String> version;

  /// Creates a new [SqlServerEsuLicenseProperties].
  /// [activationState] The activation state of the license.
  /// [billingPlan] SQL Server ESU license type.
  /// [physicalCores] The number of total cores of the license covers.
  /// [scopeType] The Azure scope to which the license will apply.
  /// [version] The SQL Server version the license covers.
  SqlServerEsuLicenseProperties({
    required this.activationState,
    required this.billingPlan,
    required this.physicalCores,
    required this.scopeType,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': activationState,
      'billingPlan': billingPlan,
      'physicalCores': physicalCores,
      'scopeType': scopeType,
      'version': version,
    };
  }

  factory SqlServerEsuLicenseProperties.fromMap(Map<String, dynamic> map) {
    return SqlServerEsuLicenseProperties(
      activationState: (map['activationState'] as String).input(),
      billingPlan: (map['billingPlan'] as String).input(),
      physicalCores: (map['physicalCores'] as int).input(),
      scopeType: (map['scopeType'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

