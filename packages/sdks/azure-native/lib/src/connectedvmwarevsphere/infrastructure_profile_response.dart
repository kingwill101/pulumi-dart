// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the vCenter infrastructure specific settings for the virtual machine.
class InfrastructureProfileResponse {
  /// Gets the name of the corresponding resource in Kubernetes.
  final pulumi.Input<String> customResourceName;
  /// Firmware type
  final pulumi.Input<String>? firmwareType;
  /// Gets or sets the folder path of the vm.
  final pulumi.Input<String> folderPath;
  /// Gets or sets the instance uuid of the vm.
  final pulumi.Input<String> instanceUuid;
  /// Gets or sets the inventory Item ID for the virtual machine.
  final pulumi.Input<String>? inventoryItemId;
  /// Gets or sets the vCenter Managed Object name for the virtual machine.
  final pulumi.Input<String> moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  final pulumi.Input<String> moRefId;
  /// Gets or sets the SMBIOS UUID of the vm.
  final pulumi.Input<String>? smbiosUuid;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  final pulumi.Input<String>? templateId;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final pulumi.Input<String>? vCenterId;

  /// Creates a new [InfrastructureProfileResponse].
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [firmwareType] Firmware type
  /// [folderPath] Gets or sets the folder path of the vm.
  /// [instanceUuid] Gets or sets the instance uuid of the vm.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the virtual machine.
  /// [moName] Gets or sets the vCenter Managed Object name for the virtual machine.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  /// [smbiosUuid] Gets or sets the SMBIOS UUID of the vm.
  /// [templateId] Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  InfrastructureProfileResponse({
    required this.customResourceName,
    this.firmwareType,
    required this.folderPath,
    required this.instanceUuid,
    this.inventoryItemId,
    required this.moName,
    required this.moRefId,
    this.smbiosUuid,
    this.templateId,
    this.vCenterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResourceName': customResourceName,
      'firmwareType': ?firmwareType,
      'folderPath': folderPath,
      'instanceUuid': instanceUuid,
      'inventoryItemId': ?inventoryItemId,
      'moName': moName,
      'moRefId': moRefId,
      'smbiosUuid': ?smbiosUuid,
      'templateId': ?templateId,
      'vCenterId': ?vCenterId,
    };
  }

  factory InfrastructureProfileResponse.fromMap(Map<String, dynamic> map) {
    return InfrastructureProfileResponse(
      customResourceName: (map['customResourceName'] as String).input(),
      firmwareType: map['firmwareType'] == null ? null : (map['firmwareType']! as String).input(),
      folderPath: (map['folderPath'] as String).input(),
      instanceUuid: (map['instanceUuid'] as String).input(),
      inventoryItemId: map['inventoryItemId'] == null ? null : (map['inventoryItemId']! as String).input(),
      moName: (map['moName'] as String).input(),
      moRefId: (map['moRefId'] as String).input(),
      smbiosUuid: map['smbiosUuid'] == null ? null : (map['smbiosUuid']! as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
      vCenterId: map['vCenterId'] == null ? null : (map['vCenterId']! as String).input(),
    );
  }
}

