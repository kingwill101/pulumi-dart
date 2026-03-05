// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data_response.dart';
import 'disk_purchase_plan_response.dart';
import 'disk_security_profile_response.dart';
import 'disk_sku_response.dart';
import 'encryption_response.dart';
import 'encryption_settings_collection_response.dart';
import 'extended_location_response.dart';
import 'property_updates_in_progress_response.dart';
import 'share_info_element_response.dart';
import 'supported_capabilities_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDisk.
class GetDiskResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Set to true to enable bursting beyond the provisioned performance target of the disk. Bursting is disabled by default. Does not apply to Ultra disks.
  final bool? burstingEnabled;
  /// Latest time when bursting was last enabled on a disk.
  final String burstingEnabledTime;
  /// Percentage complete for the background copy when a resource is created via the CopyStart operation.
  final double? completionPercent;
  /// Disk source information. CreationData information cannot be changed after the disk has been created.
  final CreationDataResponse creationData;
  /// Additional authentication requirements when exporting or uploading to a disk or snapshot.
  final String? dataAccessAuthMode;
  /// ARM id of the DiskAccess resource for using private endpoints on disks.
  final String? diskAccessId;
  /// The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes.
  final double? diskIOPSReadOnly;
  /// The number of IOPS allowed for this disk; only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes.
  final double? diskIOPSReadWrite;
  /// The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  final double? diskMBpsReadOnly;
  /// The bandwidth allowed for this disk; only settable for UltraSSD disks. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  final double? diskMBpsReadWrite;
  /// The size of the disk in bytes. This field is read only.
  final double diskSizeBytes;
  /// If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  final int? diskSizeGB;
  /// The state of the disk.
  final String diskState;
  /// Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  final EncryptionResponse? encryption;
  /// Encryption settings collection used for Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  final EncryptionSettingsCollectionResponse? encryptionSettingsCollection;
  /// The extended location where the disk will be created. Extended location cannot be changed.
  final ExtendedLocationResponse? extendedLocation;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  final String? hyperVGeneration;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The UTC time when the ownership state of the disk was last changed i.e., the time the disk was last attached or detached from a VM or the time when the VM to which the disk was attached was deallocated or started.
  final String lastOwnershipUpdateTime;
  /// The geo-location where the resource lives
  final String location;
  /// A relative URI containing the ID of the VM that has the disk attached.
  final String managedBy;
  /// List of relative URIs containing the IDs of the VMs that have the disk attached. maxShares should be set to a value greater than one for disks to allow attaching them to multiple VMs.
  final List<String> managedByExtended;
  /// The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  final int? maxShares;
  /// The name of the resource
  final String name;
  /// Policy for accessing the disk via network.
  final String? networkAccessPolicy;
  /// Setting this property to true improves reliability and performance of data disks that are frequently (more than 5 times a day) by detached from one virtual machine and attached to another. This property should not be set for disks that are not detached and attached frequently as it causes the disks to not align with the fault domain of the virtual machine.
  final bool? optimizedForFrequentAttach;
  /// The Operating System type.
  final String? osType;
  /// Properties of the disk for which update is pending.
  final PropertyUpdatesInProgressResponse propertyUpdatesInProgress;
  /// The disk provisioning state.
  final String provisioningState;
  /// Policy for controlling export on the disk.
  final String? publicNetworkAccess;
  /// Purchase plan information for the the image from which the OS disk was created. E.g. - {name: 2019-Datacenter, publisher: MicrosoftWindowsServer, product: WindowsServer}
  final DiskPurchasePlanResponse? purchasePlan;
  /// Contains the security related information for the resource.
  final DiskSecurityProfileResponse? securityProfile;
  /// Details of the list of all VMs that have the disk attached. maxShares should be set to a value greater than one for disks to allow attaching them to multiple VMs.
  final List<ShareInfoElementResponse> shareInfo;
  /// The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, or PremiumV2_LRS.
  final DiskSkuResponse? sku;
  /// List of supported capabilities for the image from which the OS disk was created.
  final SupportedCapabilitiesResponse? supportedCapabilities;
  /// Indicates the OS on a disk supports hibernation.
  final bool? supportsHibernation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Performance tier of the disk (e.g, P4, S10) as described here: https://azure.microsoft.com/en-us/pricing/details/managed-disks/. Does not apply to Ultra disks.
  final String? tier;
  /// The time when the disk was created.
  final String timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Unique Guid identifying the resource.
  final String uniqueId;
  /// The Logical zone list for Disk.
  final List<String>? zones;

  /// Creates a new [GetDiskResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [burstingEnabled] Set to true to enable bursting beyond the provisioned performance target of the disk. Bursting is disabled by default. Does not apply to Ultra disks.
  /// [burstingEnabledTime] Latest time when bursting was last enabled on a disk.
  /// [completionPercent] Percentage complete for the background copy when a resource is created via the CopyStart operation.
  /// [creationData] Disk source information. CreationData information cannot be changed after the disk has been created.
  /// [dataAccessAuthMode] Additional authentication requirements when exporting or uploading to a disk or snapshot.
  /// [diskAccessId] ARM id of the DiskAccess resource for using private endpoints on disks.
  /// [diskIOPSReadOnly] The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes.
  /// [diskIOPSReadWrite] The number of IOPS allowed for this disk; only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes.
  /// [diskMBpsReadOnly] The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  /// [diskMBpsReadWrite] The bandwidth allowed for this disk; only settable for UltraSSD disks. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  /// [diskSizeBytes] The size of the disk in bytes. This field is read only.
  /// [diskSizeGB] If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  /// [diskState] The state of the disk.
  /// [encryption] Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  /// [encryptionSettingsCollection] Encryption settings collection used for Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  /// [extendedLocation] The extended location where the disk will be created. Extended location cannot be changed.
  /// [hyperVGeneration] The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastOwnershipUpdateTime] The UTC time when the ownership state of the disk was last changed i.e., the time the disk was last attached or detached from a VM or the time when the VM to which the disk was attached was deallocated or started.
  /// [location] The geo-location where the resource lives
  /// [managedBy] A relative URI containing the ID of the VM that has the disk attached.
  /// [managedByExtended] List of relative URIs containing the IDs of the VMs that have the disk attached. maxShares should be set to a value greater than one for disks to allow attaching them to multiple VMs.
  /// [maxShares] The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  /// [name] The name of the resource
  /// [networkAccessPolicy] Policy for accessing the disk via network.
  /// [optimizedForFrequentAttach] Setting this property to true improves reliability and performance of data disks that are frequently (more than 5 times a day) by detached from one virtual machine and attached to another. This property should not be set for disks that are not detached and attached frequently as it causes the disks to not align with the fault domain of the virtual machine.
  /// [osType] The Operating System type.
  /// [propertyUpdatesInProgress] Properties of the disk for which update is pending.
  /// [provisioningState] The disk provisioning state.
  /// [publicNetworkAccess] Policy for controlling export on the disk.
  /// [purchasePlan] Purchase plan information for the the image from which the OS disk was created. E.g. - {name: 2019-Datacenter, publisher: MicrosoftWindowsServer, product: WindowsServer}
  /// [securityProfile] Contains the security related information for the resource.
  /// [shareInfo] Details of the list of all VMs that have the disk attached. maxShares should be set to a value greater than one for disks to allow attaching them to multiple VMs.
  /// [sku] The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, or PremiumV2_LRS.
  /// [supportedCapabilities] List of supported capabilities for the image from which the OS disk was created.
  /// [supportsHibernation] Indicates the OS on a disk supports hibernation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tier] Performance tier of the disk (e.g, P4, S10) as described here: https://azure.microsoft.com/en-us/pricing/details/managed-disks/. Does not apply to Ultra disks.
  /// [timeCreated] The time when the disk was created.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueId] Unique Guid identifying the resource.
  /// [zones] The Logical zone list for Disk.
  GetDiskResult({
    required this.azureApiVersion,
    this.burstingEnabled,
    required this.burstingEnabledTime,
    this.completionPercent,
    required this.creationData,
    this.dataAccessAuthMode,
    this.diskAccessId,
    this.diskIOPSReadOnly,
    this.diskIOPSReadWrite,
    this.diskMBpsReadOnly,
    this.diskMBpsReadWrite,
    required this.diskSizeBytes,
    this.diskSizeGB,
    required this.diskState,
    this.encryption,
    this.encryptionSettingsCollection,
    this.extendedLocation,
    this.hyperVGeneration,
    required this.id,
    required this.lastOwnershipUpdateTime,
    required this.location,
    required this.managedBy,
    required this.managedByExtended,
    this.maxShares,
    required this.name,
    this.networkAccessPolicy,
    this.optimizedForFrequentAttach,
    this.osType,
    required this.propertyUpdatesInProgress,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.purchasePlan,
    this.securityProfile,
    required this.shareInfo,
    this.sku,
    this.supportedCapabilities,
    this.supportsHibernation,
    required this.systemData,
    this.tags,
    this.tier,
    required this.timeCreated,
    required this.type,
    required this.uniqueId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'burstingEnabled': ?burstingEnabled,
      'burstingEnabledTime': burstingEnabledTime,
      'completionPercent': ?completionPercent,
      'creationData': creationData.toMap(),
      'dataAccessAuthMode': ?dataAccessAuthMode,
      'diskAccessId': ?diskAccessId,
      'diskIOPSReadOnly': ?diskIOPSReadOnly,
      'diskIOPSReadWrite': ?diskIOPSReadWrite,
      'diskMBpsReadOnly': ?diskMBpsReadOnly,
      'diskMBpsReadWrite': ?diskMBpsReadWrite,
      'diskSizeBytes': diskSizeBytes,
      'diskSizeGB': ?diskSizeGB,
      'diskState': diskState,
      'encryption': ?encryption?.toMap(),
      'encryptionSettingsCollection': ?encryptionSettingsCollection?.toMap(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'hyperVGeneration': ?hyperVGeneration,
      'id': id,
      'lastOwnershipUpdateTime': lastOwnershipUpdateTime,
      'location': location,
      'managedBy': managedBy,
      'managedByExtended': managedByExtended,
      'maxShares': ?maxShares,
      'name': name,
      'networkAccessPolicy': ?networkAccessPolicy,
      'optimizedForFrequentAttach': ?optimizedForFrequentAttach,
      'osType': ?osType,
      'propertyUpdatesInProgress': propertyUpdatesInProgress.toMap(),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purchasePlan': ?purchasePlan?.toMap(),
      'securityProfile': ?securityProfile?.toMap(),
      'shareInfo': pulumi.Input.encodeList<ShareInfoElementResponse, Map<String, dynamic>>(shareInfo, (value) => value.toMap()),
      'sku': ?sku?.toMap(),
      'supportedCapabilities': ?supportedCapabilities?.toMap(),
      'supportsHibernation': ?supportsHibernation,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tier': ?tier,
      'timeCreated': timeCreated,
      'type': type,
      'uniqueId': uniqueId,
      'zones': ?zones,
    };
  }

  factory GetDiskResult.fromMap(Map<String, dynamic> map) {
    return GetDiskResult(
      azureApiVersion: map['azureApiVersion'] as String,
      burstingEnabled: (() { final guardedValue = map['burstingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      burstingEnabledTime: map['burstingEnabledTime'] as String,
      completionPercent: (() { final guardedValue = map['completionPercent']; if (guardedValue == null) return null; return guardedValue as double; })(),
      creationData: CreationDataResponse.fromMap((map['creationData']! as Map).cast<String, dynamic>()),
      dataAccessAuthMode: (() { final guardedValue = map['dataAccessAuthMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskAccessId: (() { final guardedValue = map['diskAccessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskIOPSReadOnly: (() { final guardedValue = map['diskIOPSReadOnly']; if (guardedValue == null) return null; return guardedValue as double; })(),
      diskIOPSReadWrite: (() { final guardedValue = map['diskIOPSReadWrite']; if (guardedValue == null) return null; return guardedValue as double; })(),
      diskMBpsReadOnly: (() { final guardedValue = map['diskMBpsReadOnly']; if (guardedValue == null) return null; return guardedValue as double; })(),
      diskMBpsReadWrite: (() { final guardedValue = map['diskMBpsReadWrite']; if (guardedValue == null) return null; return guardedValue as double; })(),
      diskSizeBytes: map['diskSizeBytes'] as double,
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return guardedValue as int; })(),
      diskState: map['diskState'] as String,
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionSettingsCollection: (() { final guardedValue = map['encryptionSettingsCollection']; if (guardedValue == null) return null; return EncryptionSettingsCollectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      lastOwnershipUpdateTime: map['lastOwnershipUpdateTime'] as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] as String,
      managedByExtended: (map['managedByExtended'] as List).cast<String>(),
      maxShares: (() { final guardedValue = map['maxShares']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      networkAccessPolicy: (() { final guardedValue = map['networkAccessPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optimizedForFrequentAttach: (() { final guardedValue = map['optimizedForFrequentAttach']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propertyUpdatesInProgress: PropertyUpdatesInProgressResponse.fromMap((map['propertyUpdatesInProgress']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purchasePlan: (() { final guardedValue = map['purchasePlan']; if (guardedValue == null) return null; return DiskPurchasePlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return DiskSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      shareInfo: pulumi.Input.decodeList<ShareInfoElementResponse>(map['shareInfo']!, (value) => ShareInfoElementResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return DiskSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportedCapabilities: (() { final guardedValue = map['supportedCapabilities']; if (guardedValue == null) return null; return SupportedCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportsHibernation: (() { final guardedValue = map['supportsHibernation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      uniqueId: map['uniqueId'] as String,
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

