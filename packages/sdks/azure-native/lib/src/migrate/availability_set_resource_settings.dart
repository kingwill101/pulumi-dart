// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the availability set resource settings.
class AvailabilitySetResourceSettings {
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

  /// Creates a new [AvailabilitySetResourceSettings].
  /// [faultDomain] Gets or sets the target fault domain.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [updateDomain] Gets or sets the target update domain.
  const AvailabilitySetResourceSettings({
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
      faultDomain: (() { final guardedValue = map['faultDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceGroupName: (() { final guardedValue = map['targetResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceName: (() { final guardedValue = map['targetResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateDomain: (() { final guardedValue = map['updateDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

