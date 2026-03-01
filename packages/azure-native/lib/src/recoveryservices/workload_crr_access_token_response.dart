// ignore_for_file: unused_element, unnecessary_cast


class WorkloadCrrAccessTokenResponse {
  /// Access token used for authentication
  final String? accessTokenString;
  /// Active region name of BMS Stamp
  final String? bMSActiveRegion;
  /// Backup Management Type
  final String? backupManagementType;
  /// Container Id
  final String? containerId;
  /// Container Unique name
  final String? containerName;
  /// Container Type
  final String? containerType;
  /// CoordinatorServiceStampId to be used by BCM in restore call
  final String? coordinatorServiceStampId;
  /// CoordinatorServiceStampUri to be used by BCM in restore call
  final String? coordinatorServiceStampUri;
  /// Datasource Container Unique Name
  final String? datasourceContainerName;
  /// Datasource Id
  final String? datasourceId;
  /// Datasource Friendly Name
  final String? datasourceName;
  /// Datasource Type
  final String? datasourceType;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'WorkloadCrrAccessToken'.
  final String objectType;
  /// Policy Id
  final String? policyId;
  /// Policy Name
  final String? policyName;
  final String? protectableObjectContainerHostOsName;
  final String? protectableObjectFriendlyName;
  final String? protectableObjectParentLogicalContainerName;
  final String? protectableObjectProtectionState;
  final String? protectableObjectUniqueName;
  final String? protectableObjectWorkloadType;
  /// Protected item container id
  final double? protectionContainerId;
  /// ProtectionServiceStampId to be used by BCM in restore call
  final String? protectionServiceStampId;
  /// ProtectionServiceStampUri to be used by BCM in restore call
  final String? protectionServiceStampUri;
  /// Recovery Point Id
  final String? recoveryPointId;
  /// Recovery Point Time
  final String? recoveryPointTime;
  /// Resource Group name of the source vault
  final String? resourceGroupName;
  /// Resource Id of the source vault
  final String? resourceId;
  /// Resource Name of the source vault
  final String? resourceName;
  /// Recovery point information: Managed virtual machine
  final bool? rpIsManagedVirtualMachine;
  /// Recovery point information: Original SA option
  final bool? rpOriginalSAOption;
  /// Recovery point Tier Information
  final Map<String, String>? rpTierInformation;
  /// Recovery point information: VM size description
  final String? rpVMSizeDescription;
  /// Subscription Id of the source vault
  final String? subscriptionId;
  /// Extended Information about the token like FileSpec etc.
  final String? tokenExtendedInformation;

  /// Creates a new [WorkloadCrrAccessTokenResponse].
  /// [accessTokenString] Access token used for authentication
  /// [bMSActiveRegion] Active region name of BMS Stamp
  /// [backupManagementType] Backup Management Type
  /// [containerId] Container Id
  /// [containerName] Container Unique name
  /// [containerType] Container Type
  /// [coordinatorServiceStampId] CoordinatorServiceStampId to be used by BCM in restore call
  /// [coordinatorServiceStampUri] CoordinatorServiceStampUri to be used by BCM in restore call
  /// [datasourceContainerName] Datasource Container Unique Name
  /// [datasourceId] Datasource Id
  /// [datasourceName] Datasource Friendly Name
  /// [datasourceType] Datasource Type
  /// [objectType] Type of the specific object - used for deserializing
  /// [policyId] Policy Id
  /// [policyName] Policy Name
  /// [protectableObjectContainerHostOsName] Optional.
  /// [protectableObjectFriendlyName] Optional.
  /// [protectableObjectParentLogicalContainerName] Optional.
  /// [protectableObjectProtectionState] Optional.
  /// [protectableObjectUniqueName] Optional.
  /// [protectableObjectWorkloadType] Optional.
  /// [protectionContainerId] Protected item container id
  /// [protectionServiceStampId] ProtectionServiceStampId to be used by BCM in restore call
  /// [protectionServiceStampUri] ProtectionServiceStampUri to be used by BCM in restore call
  /// [recoveryPointId] Recovery Point Id
  /// [recoveryPointTime] Recovery Point Time
  /// [resourceGroupName] Resource Group name of the source vault
  /// [resourceId] Resource Id of the source vault
  /// [resourceName] Resource Name of the source vault
  /// [rpIsManagedVirtualMachine] Recovery point information: Managed virtual machine
  /// [rpOriginalSAOption] Recovery point information: Original SA option
  /// [rpTierInformation] Recovery point Tier Information
  /// [rpVMSizeDescription] Recovery point information: VM size description
  /// [subscriptionId] Subscription Id of the source vault
  /// [tokenExtendedInformation] Extended Information about the token like FileSpec etc.
  WorkloadCrrAccessTokenResponse({
    this.accessTokenString,
    this.bMSActiveRegion,
    this.backupManagementType,
    this.containerId,
    this.containerName,
    this.containerType,
    this.coordinatorServiceStampId,
    this.coordinatorServiceStampUri,
    this.datasourceContainerName,
    this.datasourceId,
    this.datasourceName,
    this.datasourceType,
    required this.objectType,
    this.policyId,
    this.policyName,
    this.protectableObjectContainerHostOsName,
    this.protectableObjectFriendlyName,
    this.protectableObjectParentLogicalContainerName,
    this.protectableObjectProtectionState,
    this.protectableObjectUniqueName,
    this.protectableObjectWorkloadType,
    this.protectionContainerId,
    this.protectionServiceStampId,
    this.protectionServiceStampUri,
    this.recoveryPointId,
    this.recoveryPointTime,
    this.resourceGroupName,
    this.resourceId,
    this.resourceName,
    this.rpIsManagedVirtualMachine,
    this.rpOriginalSAOption,
    this.rpTierInformation,
    this.rpVMSizeDescription,
    this.subscriptionId,
    this.tokenExtendedInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenString': ?accessTokenString,
      'bMSActiveRegion': ?bMSActiveRegion,
      'backupManagementType': ?backupManagementType,
      'containerId': ?containerId,
      'containerName': ?containerName,
      'containerType': ?containerType,
      'coordinatorServiceStampId': ?coordinatorServiceStampId,
      'coordinatorServiceStampUri': ?coordinatorServiceStampUri,
      'datasourceContainerName': ?datasourceContainerName,
      'datasourceId': ?datasourceId,
      'datasourceName': ?datasourceName,
      'datasourceType': ?datasourceType,
      'objectType': objectType,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'protectableObjectContainerHostOsName': ?protectableObjectContainerHostOsName,
      'protectableObjectFriendlyName': ?protectableObjectFriendlyName,
      'protectableObjectParentLogicalContainerName': ?protectableObjectParentLogicalContainerName,
      'protectableObjectProtectionState': ?protectableObjectProtectionState,
      'protectableObjectUniqueName': ?protectableObjectUniqueName,
      'protectableObjectWorkloadType': ?protectableObjectWorkloadType,
      'protectionContainerId': ?protectionContainerId,
      'protectionServiceStampId': ?protectionServiceStampId,
      'protectionServiceStampUri': ?protectionServiceStampUri,
      'recoveryPointId': ?recoveryPointId,
      'recoveryPointTime': ?recoveryPointTime,
      'resourceGroupName': ?resourceGroupName,
      'resourceId': ?resourceId,
      'resourceName': ?resourceName,
      'rpIsManagedVirtualMachine': ?rpIsManagedVirtualMachine,
      'rpOriginalSAOption': ?rpOriginalSAOption,
      'rpTierInformation': ?rpTierInformation,
      'rpVMSizeDescription': ?rpVMSizeDescription,
      'subscriptionId': ?subscriptionId,
      'tokenExtendedInformation': ?tokenExtendedInformation,
    };
  }

  factory WorkloadCrrAccessTokenResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadCrrAccessTokenResponse(
      accessTokenString: map['accessTokenString'] == null ? null : map['accessTokenString'] as String,
      bMSActiveRegion: map['bMSActiveRegion'] == null ? null : map['bMSActiveRegion'] as String,
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      containerId: map['containerId'] == null ? null : map['containerId'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      containerType: map['containerType'] == null ? null : map['containerType'] as String,
      coordinatorServiceStampId: map['coordinatorServiceStampId'] == null ? null : map['coordinatorServiceStampId'] as String,
      coordinatorServiceStampUri: map['coordinatorServiceStampUri'] == null ? null : map['coordinatorServiceStampUri'] as String,
      datasourceContainerName: map['datasourceContainerName'] == null ? null : map['datasourceContainerName'] as String,
      datasourceId: map['datasourceId'] == null ? null : map['datasourceId'] as String,
      datasourceName: map['datasourceName'] == null ? null : map['datasourceName'] as String,
      datasourceType: map['datasourceType'] == null ? null : map['datasourceType'] as String,
      objectType: map['objectType'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      protectableObjectContainerHostOsName: map['protectableObjectContainerHostOsName'] == null ? null : map['protectableObjectContainerHostOsName'] as String,
      protectableObjectFriendlyName: map['protectableObjectFriendlyName'] == null ? null : map['protectableObjectFriendlyName'] as String,
      protectableObjectParentLogicalContainerName: map['protectableObjectParentLogicalContainerName'] == null ? null : map['protectableObjectParentLogicalContainerName'] as String,
      protectableObjectProtectionState: map['protectableObjectProtectionState'] == null ? null : map['protectableObjectProtectionState'] as String,
      protectableObjectUniqueName: map['protectableObjectUniqueName'] == null ? null : map['protectableObjectUniqueName'] as String,
      protectableObjectWorkloadType: map['protectableObjectWorkloadType'] == null ? null : map['protectableObjectWorkloadType'] as String,
      protectionContainerId: map['protectionContainerId'] == null ? null : map['protectionContainerId'] as double,
      protectionServiceStampId: map['protectionServiceStampId'] == null ? null : map['protectionServiceStampId'] as String,
      protectionServiceStampUri: map['protectionServiceStampUri'] == null ? null : map['protectionServiceStampUri'] as String,
      recoveryPointId: map['recoveryPointId'] == null ? null : map['recoveryPointId'] as String,
      recoveryPointTime: map['recoveryPointTime'] == null ? null : map['recoveryPointTime'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      rpIsManagedVirtualMachine: map['rpIsManagedVirtualMachine'] == null ? null : map['rpIsManagedVirtualMachine'] as bool,
      rpOriginalSAOption: map['rpOriginalSAOption'] == null ? null : map['rpOriginalSAOption'] as bool,
      rpTierInformation: map['rpTierInformation'] == null ? null : (map['rpTierInformation'] as Map).cast<String, String>(),
      rpVMSizeDescription: map['rpVMSizeDescription'] == null ? null : map['rpVMSizeDescription'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tokenExtendedInformation: map['tokenExtendedInformation'] == null ? null : map['tokenExtendedInformation'] as String,
    );
  }
}

