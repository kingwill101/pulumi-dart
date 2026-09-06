// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the SQL Server resource settings.
class SqlServerResourceSettings {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Sql/servers'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String?>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String?>? targetResourceName;

  /// Creates a new [SqlServerResourceSettings].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  const SqlServerResourceSettings({
    required this.resourceType,
    this.targetResourceGroupName,
    this.targetResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
    };
  }

  factory SqlServerResourceSettings.fromMap(Map<String, dynamic> map) {
    return SqlServerResourceSettings(
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      targetResourceGroupName: (() { final guardedValue = map['targetResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceName: (() { final guardedValue = map['targetResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
