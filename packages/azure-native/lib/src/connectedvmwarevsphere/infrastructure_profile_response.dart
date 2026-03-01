// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the vCenter infrastructure specific settings for the virtual machine.
class InfrastructureProfileResponse {
  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;
  /// Firmware type
  final String? firmwareType;
  /// Gets or sets the folder path of the vm.
  final String folderPath;
  /// Gets or sets the instance uuid of the vm.
  final String instanceUuid;
  /// Gets or sets the inventory Item ID for the virtual machine.
  final String? inventoryItemId;
  /// Gets or sets the vCenter Managed Object name for the virtual machine.
  final String moName;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the virtual machine.
  final String moRefId;
  /// Gets or sets the SMBIOS UUID of the vm.
  final String? smbiosUuid;
  /// Gets or sets the ARM Id of the template resource to deploy the virtual machine.
  final String? templateId;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final String? vCenterId;

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
      customResourceName: map['customResourceName'] as String,
      firmwareType: map['firmwareType'] == null ? null : map['firmwareType'] as String,
      folderPath: map['folderPath'] as String,
      instanceUuid: map['instanceUuid'] as String,
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId'] as String,
      moName: map['moName'] as String,
      moRefId: map['moRefId'] as String,
      smbiosUuid: map['smbiosUuid'] == null ? null : map['smbiosUuid'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
      vCenterId: map['vCenterId'] == null ? null : map['vCenterId'] as String,
    );
  }
}

