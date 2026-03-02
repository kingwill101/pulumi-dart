// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of SQL Server License.
class SqlServerLicenseProperties {
  /// The activation state of the license.
  final pulumi.Input<String> activationState;
  /// SQL Server license type.
  final pulumi.Input<String> billingPlan;
  /// This property represents the choice between SQL Server Core and ESU licenses.
  final pulumi.Input<String> licenseCategory;
  /// The number of total cores of the license covers.
  final pulumi.Input<int> physicalCores;
  /// The Azure scope to which the license will apply.
  final pulumi.Input<String> scopeType;

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
      activationState: (map['activationState'] as String).input(),
      billingPlan: (map['billingPlan'] as String).input(),
      licenseCategory: (map['licenseCategory'] as String).input(),
      physicalCores: (map['physicalCores'] as int).input(),
      scopeType: (map['scopeType'] as String).input(),
    );
  }
}

