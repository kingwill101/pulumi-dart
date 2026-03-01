// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the vCenter infrastructure specific settings for the virtual machine.
class InfrastructureProfile {
  /// Firmware type
  final String? firmwareType;
  /// Gets or sets the inventory Item ID for the virtual machine.
  final String? inventoryItemId;
  /// Gets or sets the SMBIOS UUID of the vm.
  final String? smbiosUuid;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  final String? templateId;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final String? vCenterId;

  /// Creates a new [InfrastructureProfile].
  /// [firmwareType] Firmware type
  /// [inventoryItemId] Gets or sets the inventory Item ID for the virtual machine.
  /// [smbiosUuid] Gets or sets the SMBIOS UUID of the vm.
  /// [templateId] Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  InfrastructureProfile({
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
      firmwareType: map['firmwareType'] == null ? null : map['firmwareType'] as String,
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId'] as String,
      smbiosUuid: map['smbiosUuid'] == null ? null : map['smbiosUuid'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
      vCenterId: map['vCenterId'] == null ? null : map['vCenterId'] as String,
    );
  }
}

