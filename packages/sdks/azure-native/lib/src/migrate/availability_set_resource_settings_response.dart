// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the availability set resource settings.
class AvailabilitySetResourceSettingsResponse {
  /// Gets or sets the target fault domain.
  final pulumi.Input<int>? faultDomain;
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Compute/availabilitySets'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;
  /// Gets or sets the target update domain.
  final pulumi.Input<int>? updateDomain;

  /// Creates a new [AvailabilitySetResourceSettingsResponse].
  /// [faultDomain] Gets or sets the target fault domain.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [updateDomain] Gets or sets the target update domain.
  AvailabilitySetResourceSettingsResponse({
    this.faultDomain,
    required this.resourceType,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
    this.updateDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faultDomain': ?faultDomain,
      'resourceType': resourceType,
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
      'updateDomain': ?updateDomain,
    };
  }

  factory AvailabilitySetResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilitySetResourceSettingsResponse(
      faultDomain: map['faultDomain'] == null ? null : (map['faultDomain']! as int).input(),
      resourceType: (map['resourceType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : (map['targetResourceGroupName']! as String).input(),
      targetResourceName: map['targetResourceName'] == null ? null : (map['targetResourceName']! as String).input(),
      updateDomain: map['updateDomain'] == null ? null : (map['updateDomain']! as int).input(),
    );
  }
}

