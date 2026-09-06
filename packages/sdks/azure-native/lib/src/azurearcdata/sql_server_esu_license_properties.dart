// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of SQL Server ESU license.
class SqlServerEsuLicenseProperties {
  /// The activation state of the license.
  final pulumi.Input<dynamic> activationState;
  /// SQL Server ESU license type.
  final pulumi.Input<dynamic> billingPlan;
  /// The number of total cores of the license covers.
  final pulumi.Input<int> physicalCores;
  /// The Azure scope to which the license will apply.
  final pulumi.Input<dynamic> scopeType;
  /// The SQL Server version the license covers.
  final pulumi.Input<dynamic> version;

  /// Creates a new [SqlServerEsuLicenseProperties].
  /// [activationState] The activation state of the license.
  /// [billingPlan] SQL Server ESU license type.
  /// [physicalCores] The number of total cores of the license covers.
  /// [scopeType] The Azure scope to which the license will apply.
  /// [version] The SQL Server version the license covers.
  const SqlServerEsuLicenseProperties({
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
      activationState: pulumi.Input.fromValue(map['activationState']),
      billingPlan: pulumi.Input.fromValue(map['billingPlan']),
      physicalCores: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['physicalCores'])),
      scopeType: pulumi.Input.fromValue(map['scopeType']),
      version: pulumi.Input.fromValue(map['version']),
    );
  }
}
