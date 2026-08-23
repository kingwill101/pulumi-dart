// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the virtual machine resource settings.
class VirtualMachineResourceSettings {
  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Compute/virtualMachines'.
  final pulumi.Input<String> resourceType;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the target availability set id for virtual machines not in an availability set at source.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// Gets or sets the target availability zone.
  final pulumi.Input<String>? targetAvailabilityZone;
  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;
  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;
  /// Gets or sets the target virtual machine size.
  final pulumi.Input<String>? targetVmSize;
  /// Gets or sets user-managed identities
  final pulumi.Input<List<String>>? userManagedIdentities;

  /// Creates a new [VirtualMachineResourceSettings].
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetAvailabilitySetId] Gets or sets the target availability set id for virtual machines not in an availability set at source.
  /// [targetAvailabilityZone] Gets or sets the target availability zone.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [targetVmSize] Gets or sets the target virtual machine size.
  /// [userManagedIdentities] Gets or sets user-managed identities
  const VirtualMachineResourceSettings({
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
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetAvailabilitySetId: (() { final guardedValue = map['targetAvailabilitySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAvailabilityZone: (() { final guardedValue = map['targetAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceGroupName: (() { final guardedValue = map['targetResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceName: (() { final guardedValue = map['targetResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmSize: (() { final guardedValue = map['targetVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userManagedIdentities: (() { final guardedValue = map['userManagedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
