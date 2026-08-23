// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the vCenter infrastructure specific settings for the virtual machine.
class InfrastructureProfile {
  /// Firmware type
  final pulumi.Input<String>? firmwareType;
  /// Gets or sets the inventory Item ID for the virtual machine.
  final pulumi.Input<String>? inventoryItemId;
  /// Gets or sets the SMBIOS UUID of the vm.
  final pulumi.Input<String>? smbiosUuid;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  final pulumi.Input<String>? templateId;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final pulumi.Input<String>? vCenterId;

  /// Creates a new [InfrastructureProfile].
  /// [firmwareType] Firmware type
  /// [inventoryItemId] Gets or sets the inventory Item ID for the virtual machine.
  /// [smbiosUuid] Gets or sets the SMBIOS UUID of the vm.
  /// [templateId] Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  const InfrastructureProfile({
    this.firmwareType,
    this.inventoryItemId,
    this.smbiosUuid,
    this.templateId,
    this.vCenterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firmwareType': ?firmwareType,
      'inventoryItemId': ?inventoryItemId,
      'smbiosUuid': ?smbiosUuid,
      'templateId': ?templateId,
      'vCenterId': ?vCenterId,
    };
  }

  factory InfrastructureProfile.fromMap(Map<String, dynamic> map) {
    return InfrastructureProfile(
      firmwareType: (() { final guardedValue = map['firmwareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbiosUuid: (() { final guardedValue = map['smbiosUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vCenterId: (() { final guardedValue = map['vCenterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
