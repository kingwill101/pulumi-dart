// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mount_target_properties_response.dart';
import 'placement_key_value_pairs_response.dart';
import 'volume_properties_response_data_protection.dart';
import 'volume_properties_response_export_policy.dart';

/// Volume resource
class VolumeGroupVolumePropertiesResponse {
  /// Actual throughput in MiB/s for auto qosType volumes calculated based on size and serviceLevel
  final double actualThroughputMibps;
  /// Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
  final String? avsDataStore;
  /// Resource identifier used to identify the Backup.
  final String? backupId;
  /// Unique Baremetal Tenant Identifier.
  final String baremetalTenantId;
  /// Pool Resource Id used in case of creating a volume through volume group
  final String? capacityPoolResourceId;
  /// When a volume is being restored from another volume's snapshot, will show the percentage completion of this cloning process. When this value is empty/null there is no cloning process currently happening on this volume. This value will update every 5 minutes during cloning.
  final int cloneProgress;
  /// Specifies whether Cool Access(tiering) is enabled for the volume.
  final bool? coolAccess;
  /// coolAccessRetrievalPolicy determines the data retrieval behavior from the cool tier to standard storage based on the read pattern for cool access enabled volumes. The possible values for this field are:
  /// Default - Data will be pulled from cool tier to standard storage on random reads. This policy is the default.
  /// OnRead - All client-driven data read is pulled from cool tier to standard storage on both sequential and random reads.
  /// Never - No client-driven data is pulled from cool tier to standard storage.
  final String? coolAccessRetrievalPolicy;
  /// coolAccessTieringPolicy determines which cold data blocks are moved to cool tier. The possible values for this field are: Auto - Moves cold user data blocks in both the Snapshot copies and the active file system to the cool tier tier. This policy is the default. SnapshotOnly - Moves user data blocks of the Volume Snapshot copies that are not associated with the active file system to the cool tier.
  final String? coolAccessTieringPolicy;
  /// Specifies the number of days after which data that is not accessed by clients will be tiered.
  final int? coolnessPeriod;
  /// A unique file path for the volume. Used when creating mount targets
  final String creationToken;
  /// DataProtection type volumes include an object containing details of the replication
  final VolumePropertiesResponseDataProtection? dataProtection;
  /// Data store resource unique identifier
  final List<String> dataStoreResourceId;
  /// Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies.
  final double? defaultGroupQuotaInKiBs;
  /// Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies .
  final double? defaultUserQuotaInKiBs;
  /// If enabled (true) the snapshot the volume was created from will be automatically deleted after the volume create operation has finished.  Defaults to false
  final bool? deleteBaseSnapshot;
  /// The effective value of the network features type available to the volume, or current effective state of update.
  final String effectiveNetworkFeatures;
  /// Flag indicating whether subvolume operations are enabled on the volume
  final String? enableSubvolumes;
  /// Specifies if the volume is encrypted or not. Only available on volumes created or updated after 2022-01-01.
  final bool encrypted;
  /// Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  final String? encryptionKeySource;
  /// Set of export policy rules
  final VolumePropertiesResponseExportPolicy? exportPolicy;
  /// Flag indicating whether file access logs are enabled for the volume, based on active diagnostic settings present on the volume.
  final String fileAccessLogs;
  /// Unique FileSystem Identifier.
  final String fileSystemId;
  /// Resource Id
  final String id;
  /// Specifies if default quota is enabled for the volume.
  final bool? isDefaultQuotaEnabled;
  /// Specifies whether volume is a Large Volume or Regular Volume.
  final bool? isLargeVolume;
  /// Restoring
  final bool? isRestoring;
  /// Describe if a volume is KerberosEnabled. To be use with swagger version 2020-05-01 or later
  final bool? kerberosEnabled;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final String? keyVaultPrivateEndpointResourceId;
  /// Specifies whether LDAP is enabled or not for a given NFS volume.
  final bool? ldapEnabled;
  /// Maximum number of files allowed. Needs a service request in order to be changed. Only allowed to be changed if volume quota is more than 4TiB.
  final double maximumNumberOfFiles;
  /// List of mount targets
  final List<MountTargetPropertiesResponse> mountTargets;
  /// Resource name
  final String? name;
  /// The original value of the network features type available to the volume at the time it was created.
  final String? networkFeatures;
  /// Network Sibling Set ID for the the group of volumes sharing networking resources.
  final String networkSiblingSetId;
  /// Id of the snapshot or backup that the volume is restored from.
  final String originatingResourceId;
  /// Application specific placement rules for the particular volume
  final List<PlacementKeyValuePairsResponse>? placementRules;
  /// Set of protocol types, default NFSv3, CIFS for SMB protocol
  final List<String>? protocolTypes;
  /// The availability zone where the volume is provisioned. This refers to the logical availability zone where the volume resides.
  final String provisionedAvailabilityZone;
  /// Azure lifecycle management
  final String provisioningState;
  /// Proximity placement group associated with the volume
  final String? proximityPlacementGroup;
  /// The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
  final String? securityStyle;
  /// The service level of the file system
  final String? serviceLevel;
  /// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final String? smbAccessBasedEnumeration;
  /// Enables continuously available share property for smb volume. Only applicable for SMB volume
  final bool? smbContinuouslyAvailable;
  /// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later
  final bool? smbEncryption;
  /// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final String? smbNonBrowsable;
  /// If enabled (true) the volume will contain a read-only snapshot directory which provides access to each of the volume's snapshots (defaults to true).
  final bool? snapshotDirectoryVisible;
  /// Resource identifier used to identify the Snapshot.
  final String? snapshotId;
  /// Provides storage to network proximity information for the volume.
  final String storageToNetworkProximity;
  /// The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/volumes
  final String subnetId;
  /// T2 network information
  final String t2Network;
  /// Resource tags
  final Map<String, String>? tags;
  final double? throughputMibps;
  /// Resource type
  final String type;
  /// UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file: read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users.
  final String? unixPermissions;
  /// Maximum storage quota allowed for a file system in bytes. This is a soft quota used for alerting only. For regular volumes, valid values are in the range 50GiB to 100TiB. For large volumes, valid values are in the range 100TiB to 500TiB, and on an exceptional basis, from to 2400GiB to 2400TiB. Values expressed in bytes as multiples of 1 GiB.
  final double usageThreshold;
  /// Volume Group Name
  final String volumeGroupName;
  /// Volume spec name is the application specific designation or identifier for the particular volume in a volume group for e.g. data, log
  final String? volumeSpecName;
  /// What type of volume is this. For destination volumes in Cross Region Replication, set type to DataProtection
  final String? volumeType;
  /// Availability Zone
  final List<String>? zones;

  /// Creates a new [VolumeGroupVolumePropertiesResponse].
  /// [actualThroughputMibps] Actual throughput in MiB/s for auto qosType volumes calculated based on size and serviceLevel
  /// [avsDataStore] Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
  /// [backupId] Resource identifier used to identify the Backup.
  /// [baremetalTenantId] Unique Baremetal Tenant Identifier.
  /// [capacityPoolResourceId] Pool Resource Id used in case of creating a volume through volume group
  /// [cloneProgress] When a volume is being restored from another volume's snapshot, will show the percentage completion of this cloning process. When this value is empty/null there is no cloning process currently happening on this volume. This value will update every 5 minutes during cloning.
  /// [coolAccess] Specifies whether Cool Access(tiering) is enabled for the volume.
  /// [coolAccessRetrievalPolicy] coolAccessRetrievalPolicy determines the data retrieval behavior from the cool tier to standard storage based on the read pattern for cool access enabled volumes. The possible values for this field are:
  /// [coolAccessTieringPolicy] coolAccessTieringPolicy determines which cold data blocks are moved to cool tier. The possible values for this field are: Auto - Moves cold user data blocks in both the Snapshot copies and the active file system to the cool tier tier. This policy is the default. SnapshotOnly - Moves user data blocks of the Volume Snapshot copies that are not associated with the active file system to the cool tier.
  /// [coolnessPeriod] Specifies the number of days after which data that is not accessed by clients will be tiered.
  /// [creationToken] A unique file path for the volume. Used when creating mount targets
  /// [dataProtection] DataProtection type volumes include an object containing details of the replication
  /// [dataStoreResourceId] Data store resource unique identifier
  /// [defaultGroupQuotaInKiBs] Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies.
  /// [defaultUserQuotaInKiBs] Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies .
  /// [deleteBaseSnapshot] If enabled (true) the snapshot the volume was created from will be automatically deleted after the volume create operation has finished.  Defaults to false
  /// [effectiveNetworkFeatures] The effective value of the network features type available to the volume, or current effective state of update.
  /// [enableSubvolumes] Flag indicating whether subvolume operations are enabled on the volume
  /// [encrypted] Specifies if the volume is encrypted or not. Only available on volumes created or updated after 2022-01-01.
  /// [encryptionKeySource] Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  /// [exportPolicy] Set of export policy rules
  /// [fileAccessLogs] Flag indicating whether file access logs are enabled for the volume, based on active diagnostic settings present on the volume.
  /// [fileSystemId] Unique FileSystem Identifier.
  /// [id] Resource Id
  /// [isDefaultQuotaEnabled] Specifies if default quota is enabled for the volume.
  /// [isLargeVolume] Specifies whether volume is a Large Volume or Regular Volume.
  /// [isRestoring] Restoring
  /// [kerberosEnabled] Describe if a volume is KerberosEnabled. To be use with swagger version 2020-05-01 or later
  /// [keyVaultPrivateEndpointResourceId] The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  /// [ldapEnabled] Specifies whether LDAP is enabled or not for a given NFS volume.
  /// [maximumNumberOfFiles] Maximum number of files allowed. Needs a service request in order to be changed. Only allowed to be changed if volume quota is more than 4TiB.
  /// [mountTargets] List of mount targets
  /// [name] Resource name
  /// [networkFeatures] The original value of the network features type available to the volume at the time it was created.
  /// [networkSiblingSetId] Network Sibling Set ID for the the group of volumes sharing networking resources.
  /// [originatingResourceId] Id of the snapshot or backup that the volume is restored from.
  /// [placementRules] Application specific placement rules for the particular volume
  /// [protocolTypes] Set of protocol types, default NFSv3, CIFS for SMB protocol
  /// [provisionedAvailabilityZone] The availability zone where the volume is provisioned. This refers to the logical availability zone where the volume resides.
  /// [provisioningState] Azure lifecycle management
  /// [proximityPlacementGroup] Proximity placement group associated with the volume
  /// [securityStyle] The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
  /// [serviceLevel] The service level of the file system
  /// [smbAccessBasedEnumeration] Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [smbContinuouslyAvailable] Enables continuously available share property for smb volume. Only applicable for SMB volume
  /// [smbEncryption] Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later
  /// [smbNonBrowsable] Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [snapshotDirectoryVisible] If enabled (true) the volume will contain a read-only snapshot directory which provides access to each of the volume's snapshots (defaults to true).
  /// [snapshotId] Resource identifier used to identify the Snapshot.
  /// [storageToNetworkProximity] Provides storage to network proximity information for the volume.
  /// [subnetId] The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/volumes
  /// [t2Network] T2 network information
  /// [tags] Resource tags
  /// [throughputMibps] Optional.
  /// [type] Resource type
  /// [unixPermissions] UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file: read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users.
  /// [usageThreshold] Maximum storage quota allowed for a file system in bytes. This is a soft quota used for alerting only. For regular volumes, valid values are in the range 50GiB to 100TiB. For large volumes, valid values are in the range 100TiB to 500TiB, and on an exceptional basis, from to 2400GiB to 2400TiB. Values expressed in bytes as multiples of 1 GiB.
  /// [volumeGroupName] Volume Group Name
  /// [volumeSpecName] Volume spec name is the application specific designation or identifier for the particular volume in a volume group for e.g. data, log
  /// [volumeType] What type of volume is this. For destination volumes in Cross Region Replication, set type to DataProtection
  /// [zones] Availability Zone
  VolumeGroupVolumePropertiesResponse({
    required this.actualThroughputMibps,
    this.avsDataStore,
    this.backupId,
    required this.baremetalTenantId,
    this.capacityPoolResourceId,
    required this.cloneProgress,
    this.coolAccess,
    this.coolAccessRetrievalPolicy,
    this.coolAccessTieringPolicy,
    this.coolnessPeriod,
    required this.creationToken,
    this.dataProtection,
    required this.dataStoreResourceId,
    this.defaultGroupQuotaInKiBs,
    this.defaultUserQuotaInKiBs,
    this.deleteBaseSnapshot,
    required this.effectiveNetworkFeatures,
    this.enableSubvolumes,
    required this.encrypted,
    this.encryptionKeySource,
    this.exportPolicy,
    required this.fileAccessLogs,
    required this.fileSystemId,
    required this.id,
    this.isDefaultQuotaEnabled,
    this.isLargeVolume,
    this.isRestoring,
    this.kerberosEnabled,
    this.keyVaultPrivateEndpointResourceId,
    this.ldapEnabled,
    required this.maximumNumberOfFiles,
    required this.mountTargets,
    this.name,
    this.networkFeatures,
    required this.networkSiblingSetId,
    required this.originatingResourceId,
    this.placementRules,
    this.protocolTypes,
    required this.provisionedAvailabilityZone,
    required this.provisioningState,
    this.proximityPlacementGroup,
    this.securityStyle,
    this.serviceLevel,
    this.smbAccessBasedEnumeration,
    this.smbContinuouslyAvailable,
    this.smbEncryption,
    this.smbNonBrowsable,
    this.snapshotDirectoryVisible,
    this.snapshotId,
    required this.storageToNetworkProximity,
    required this.subnetId,
    required this.t2Network,
    this.tags,
    this.throughputMibps,
    required this.type,
    this.unixPermissions,
    required this.usageThreshold,
    required this.volumeGroupName,
    this.volumeSpecName,
    this.volumeType,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualThroughputMibps': actualThroughputMibps,
      'avsDataStore': ?avsDataStore,
      'backupId': ?backupId,
      'baremetalTenantId': baremetalTenantId,
      'capacityPoolResourceId': ?capacityPoolResourceId,
      'cloneProgress': cloneProgress,
      'coolAccess': ?coolAccess,
      'coolAccessRetrievalPolicy': ?coolAccessRetrievalPolicy,
      'coolAccessTieringPolicy': ?coolAccessTieringPolicy,
      'coolnessPeriod': ?coolnessPeriod,
      'creationToken': creationToken,
      'dataProtection': ?dataProtection == null ? null : dataProtection!.toMap(),
      'dataStoreResourceId': dataStoreResourceId,
      'defaultGroupQuotaInKiBs': ?defaultGroupQuotaInKiBs,
      'defaultUserQuotaInKiBs': ?defaultUserQuotaInKiBs,
      'deleteBaseSnapshot': ?deleteBaseSnapshot,
      'effectiveNetworkFeatures': effectiveNetworkFeatures,
      'enableSubvolumes': ?enableSubvolumes,
      'encrypted': encrypted,
      'encryptionKeySource': ?encryptionKeySource,
      'exportPolicy': ?exportPolicy == null ? null : exportPolicy!.toMap(),
      'fileAccessLogs': fileAccessLogs,
      'fileSystemId': fileSystemId,
      'id': id,
      'isDefaultQuotaEnabled': ?isDefaultQuotaEnabled,
      'isLargeVolume': ?isLargeVolume,
      'isRestoring': ?isRestoring,
      'kerberosEnabled': ?kerberosEnabled,
      'keyVaultPrivateEndpointResourceId': ?keyVaultPrivateEndpointResourceId,
      'ldapEnabled': ?ldapEnabled,
      'maximumNumberOfFiles': maximumNumberOfFiles,
      'mountTargets': pulumi.Input.encodeList<MountTargetPropertiesResponse, Map<String, dynamic>>(mountTargets, (value) => value.toMap()),
      'name': ?name,
      'networkFeatures': ?networkFeatures,
      'networkSiblingSetId': networkSiblingSetId,
      'originatingResourceId': originatingResourceId,
      'placementRules': ?placementRules == null ? null : pulumi.Input.encodeList<PlacementKeyValuePairsResponse, Map<String, dynamic>>(placementRules!, (value) => value.toMap()),
      'protocolTypes': ?protocolTypes,
      'provisionedAvailabilityZone': provisionedAvailabilityZone,
      'provisioningState': provisioningState,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'securityStyle': ?securityStyle,
      'serviceLevel': ?serviceLevel,
      'smbAccessBasedEnumeration': ?smbAccessBasedEnumeration,
      'smbContinuouslyAvailable': ?smbContinuouslyAvailable,
      'smbEncryption': ?smbEncryption,
      'smbNonBrowsable': ?smbNonBrowsable,
      'snapshotDirectoryVisible': ?snapshotDirectoryVisible,
      'snapshotId': ?snapshotId,
      'storageToNetworkProximity': storageToNetworkProximity,
      'subnetId': subnetId,
      't2Network': t2Network,
      'tags': ?tags,
      'throughputMibps': ?throughputMibps,
      'type': type,
      'unixPermissions': ?unixPermissions,
      'usageThreshold': usageThreshold,
      'volumeGroupName': volumeGroupName,
      'volumeSpecName': ?volumeSpecName,
      'volumeType': ?volumeType,
      'zones': ?zones,
    };
  }

  factory VolumeGroupVolumePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VolumeGroupVolumePropertiesResponse(
      actualThroughputMibps: map['actualThroughputMibps'] as double,
      avsDataStore: map['avsDataStore'] == null ? null : map['avsDataStore'] as String,
      backupId: map['backupId'] == null ? null : map['backupId'] as String,
      baremetalTenantId: map['baremetalTenantId'] as String,
      capacityPoolResourceId: map['capacityPoolResourceId'] == null ? null : map['capacityPoolResourceId'] as String,
      cloneProgress: map['cloneProgress'] as int,
      coolAccess: map['coolAccess'] == null ? null : map['coolAccess'] as bool,
      coolAccessRetrievalPolicy: map['coolAccessRetrievalPolicy'] == null ? null : map['coolAccessRetrievalPolicy'] as String,
      coolAccessTieringPolicy: map['coolAccessTieringPolicy'] == null ? null : map['coolAccessTieringPolicy'] as String,
      coolnessPeriod: map['coolnessPeriod'] == null ? null : map['coolnessPeriod'] as int,
      creationToken: map['creationToken'] as String,
      dataProtection: map['dataProtection'] == null ? null : VolumePropertiesResponseDataProtection.fromMap((map['dataProtection'] as Map).cast<String, dynamic>()),
      dataStoreResourceId: (map['dataStoreResourceId'] as List).cast<String>(),
      defaultGroupQuotaInKiBs: map['defaultGroupQuotaInKiBs'] == null ? null : map['defaultGroupQuotaInKiBs'] as double,
      defaultUserQuotaInKiBs: map['defaultUserQuotaInKiBs'] == null ? null : map['defaultUserQuotaInKiBs'] as double,
      deleteBaseSnapshot: map['deleteBaseSnapshot'] == null ? null : map['deleteBaseSnapshot'] as bool,
      effectiveNetworkFeatures: map['effectiveNetworkFeatures'] as String,
      enableSubvolumes: map['enableSubvolumes'] == null ? null : map['enableSubvolumes'] as String,
      encrypted: map['encrypted'] as bool,
      encryptionKeySource: map['encryptionKeySource'] == null ? null : map['encryptionKeySource'] as String,
      exportPolicy: map['exportPolicy'] == null ? null : VolumePropertiesResponseExportPolicy.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>()),
      fileAccessLogs: map['fileAccessLogs'] as String,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      isDefaultQuotaEnabled: map['isDefaultQuotaEnabled'] == null ? null : map['isDefaultQuotaEnabled'] as bool,
      isLargeVolume: map['isLargeVolume'] == null ? null : map['isLargeVolume'] as bool,
      isRestoring: map['isRestoring'] == null ? null : map['isRestoring'] as bool,
      kerberosEnabled: map['kerberosEnabled'] == null ? null : map['kerberosEnabled'] as bool,
      keyVaultPrivateEndpointResourceId: map['keyVaultPrivateEndpointResourceId'] == null ? null : map['keyVaultPrivateEndpointResourceId'] as String,
      ldapEnabled: map['ldapEnabled'] == null ? null : map['ldapEnabled'] as bool,
      maximumNumberOfFiles: map['maximumNumberOfFiles'] as double,
      mountTargets: pulumi.Input.decodeList<MountTargetPropertiesResponse>(map['mountTargets'], (value) => MountTargetPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      networkFeatures: map['networkFeatures'] == null ? null : map['networkFeatures'] as String,
      networkSiblingSetId: map['networkSiblingSetId'] as String,
      originatingResourceId: map['originatingResourceId'] as String,
      placementRules: map['placementRules'] == null ? null : pulumi.Input.decodeList<PlacementKeyValuePairsResponse>(map['placementRules'], (value) => PlacementKeyValuePairsResponse.fromMap((value as Map).cast<String, dynamic>())),
      protocolTypes: map['protocolTypes'] == null ? null : (map['protocolTypes'] as List).cast<String>(),
      provisionedAvailabilityZone: map['provisionedAvailabilityZone'] as String,
      provisioningState: map['provisioningState'] as String,
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : map['proximityPlacementGroup'] as String,
      securityStyle: map['securityStyle'] == null ? null : map['securityStyle'] as String,
      serviceLevel: map['serviceLevel'] == null ? null : map['serviceLevel'] as String,
      smbAccessBasedEnumeration: map['smbAccessBasedEnumeration'] == null ? null : map['smbAccessBasedEnumeration'] as String,
      smbContinuouslyAvailable: map['smbContinuouslyAvailable'] == null ? null : map['smbContinuouslyAvailable'] as bool,
      smbEncryption: map['smbEncryption'] == null ? null : map['smbEncryption'] as bool,
      smbNonBrowsable: map['smbNonBrowsable'] == null ? null : map['smbNonBrowsable'] as String,
      snapshotDirectoryVisible: map['snapshotDirectoryVisible'] == null ? null : map['snapshotDirectoryVisible'] as bool,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      storageToNetworkProximity: map['storageToNetworkProximity'] as String,
      subnetId: map['subnetId'] as String,
      t2Network: map['t2Network'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      throughputMibps: map['throughputMibps'] == null ? null : map['throughputMibps'] as double,
      type: map['type'] as String,
      unixPermissions: map['unixPermissions'] == null ? null : map['unixPermissions'] as String,
      usageThreshold: map['usageThreshold'] as double,
      volumeGroupName: map['volumeGroupName'] as String,
      volumeSpecName: map['volumeSpecName'] == null ? null : map['volumeSpecName'] as String,
      volumeType: map['volumeType'] == null ? null : map['volumeType'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

