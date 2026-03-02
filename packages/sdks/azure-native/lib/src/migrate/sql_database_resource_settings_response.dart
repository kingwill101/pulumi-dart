// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Sql Database resource settings.
class SqlDatabaseResourceSettingsResponse {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Sql/servers/databases'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;
  /// Defines the zone redundant resource setting.
  final pulumi.Input<String>? zoneRedundant;

  /// Creates a new [SqlDatabaseResourceSettingsResponse].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [zoneRedundant] Defines the zone redundant resource setting.
  SqlDatabaseResourceSettingsResponse({
    required this.resourceType,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory SqlDatabaseResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlDatabaseResourceSettingsResponse(
      resourceType: (map['resourceType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : (map['targetResourceGroupName']! as String).input(),
      targetResourceName: map['targetResourceName'] == null ? null : (map['targetResourceName']! as String).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant']! as String).input(),
    );
  }
}

