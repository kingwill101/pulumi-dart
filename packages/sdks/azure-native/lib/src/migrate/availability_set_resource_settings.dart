// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the availability set resource settings.
class AvailabilitySetResourceSettings {
  /// Gets or sets the target fault domain.
  final int? faultDomain;
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Compute/availabilitySets'.
  final String resourceType;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the target resource group name.
  final String? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final String? targetResourceName;
  /// Gets or sets the target update domain.
  final int? updateDomain;

  /// Creates a new [AvailabilitySetResourceSettings].
  /// [faultDomain] Gets or sets the target fault domain.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [updateDomain] Gets or sets the target update domain.
  AvailabilitySetResourceSettings({
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

  factory AvailabilitySetResourceSettings.fromMap(Map<String, dynamic> map) {
    return AvailabilitySetResourceSettings(
      faultDomain: map['faultDomain'] == null ? null : map['faultDomain'] as int,
      resourceType: map['resourceType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : map['targetResourceGroupName'] as String,
      targetResourceName: map['targetResourceName'] == null ? null : map['targetResourceName'] as String,
      updateDomain: map['updateDomain'] == null ? null : map['updateDomain'] as int,
    );
  }
}

