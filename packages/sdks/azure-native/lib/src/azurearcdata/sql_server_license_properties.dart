// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of SQL Server License.
class SqlServerLicenseProperties {
  /// The activation state of the license.
  final pulumi.Input<dynamic> activationState;
  /// SQL Server license type.
  final pulumi.Input<dynamic> billingPlan;
  /// This property represents the choice between SQL Server Core and ESU licenses.
  final pulumi.Input<dynamic> licenseCategory;
  /// The number of total cores of the license covers.
  final pulumi.Input<int> physicalCores;
  /// The Azure scope to which the license will apply.
  final pulumi.Input<dynamic> scopeType;

  /// Creates a new [SqlServerLicenseProperties].
  /// [activationState] The activation state of the license.
  /// [billingPlan] SQL Server license type.
  /// [licenseCategory] This property represents the choice between SQL Server Core and ESU licenses.
  /// [physicalCores] The number of total cores of the license covers.
  /// [scopeType] The Azure scope to which the license will apply.
  const SqlServerLicenseProperties({
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
      activationState: pulumi.Input.fromValue(map['activationState']),
      billingPlan: pulumi.Input.fromValue(map['billingPlan']),
      licenseCategory: pulumi.Input.fromValue(map['licenseCategory']),
      physicalCores: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['physicalCores'])),
      scopeType: pulumi.Input.fromValue(map['scopeType']),
    );
  }
}
