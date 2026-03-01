// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the virtual machine resource settings.
class VirtualMachineResourceSettings {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Compute/virtualMachines'.
  final String resourceType;
  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the target availability set id for virtual machines not in an availability set at source.
  final String? targetAvailabilitySetId;
  /// Gets or sets the target availability zone.
  final String? targetAvailabilityZone;
  /// Gets or sets the target resource group name.
  final String? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final String? targetResourceName;
  /// Gets or sets the target virtual machine size.
  final String? targetVmSize;
  /// Gets or sets user-managed identities
  final List<String>? userManagedIdentities;

  /// Creates a new [VirtualMachineResourceSettings].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetAvailabilitySetId] Gets or sets the target availability set id for virtual machines not in an availability set at source.
  /// [targetAvailabilityZone] Gets or sets the target availability zone.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [targetVmSize] Gets or sets the target virtual machine size.
  /// [userManagedIdentities] Gets or sets user-managed identities
  VirtualMachineResourceSettings({
    required this.resourceType,
    this.tags,
    this.targetAvailabilitySetId,
    this.targetAvailabilityZone,
    this.targetResourceGroupName,
    this.targetResourceName,
    this.targetVmSize,
    this.userManagedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'tags': ?tags,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
      'targetVmSize': ?targetVmSize,
      'userManagedIdentities': ?userManagedIdentities,
    };
  }

  factory VirtualMachineResourceSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineResourceSettings(
      resourceType: map['resourceType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : map['targetAvailabilitySetId'] as String,
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetResourceGroupName: map['targetResourceGroupName'] == null ? null : map['targetResourceGroupName'] as String,
      targetResourceName: map['targetResourceName'] == null ? null : map['targetResourceName'] as String,
      targetVmSize: map['targetVmSize'] == null ? null : map['targetVmSize'] as String,
      userManagedIdentities: map['userManagedIdentities'] == null ? null : (map['userManagedIdentities'] as List).cast<String>(),
    );
  }
}

