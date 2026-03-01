// ignore_for_file: unused_element, unnecessary_cast


/// Defines the SQL Server resource settings.
class SqlServerResourceSettings {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Sql/servers'.
  final String resourceType;
  /// Gets or sets the target resource group name.
  final String? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final String? targetResourceName;

  /// Creates a new [SqlServerResourceSettings].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  SqlServerResourceSettings({
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
      resourceType: map['resourceType'] as String,
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : map['targetResourceGroupName'] as String,
      targetResourceName: map['targetResourceName'] == null ? null : map['targetResourceName'] as String,
    );
  }
}

