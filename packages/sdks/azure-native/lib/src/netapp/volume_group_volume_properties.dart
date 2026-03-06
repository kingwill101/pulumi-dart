// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_key_value_pairs.dart';
import 'volume_properties_data_protection.dart';
import 'volume_properties_export_policy.dart';

/// Volume resource
class VolumeGroupVolumeProperties {
  /// Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
  final pulumi.Input<String>? avsDataStore;
  /// Resource identifier used to identify the Backup.
  final pulumi.Input<String>? backupId;
  /// Pool Resource Id used in case of creating a volume through volume group
  final pulumi.Input<String>? capacityPoolResourceId;
  /// Specifies whether Cool Access(tiering) is enabled for the volume.
  final pulumi.Input<bool>? coolAccess;
  /// coolAccessRetrievalPolicy determines the data retrieval behavior from the cool tier to standard storage based on the read pattern for cool access enabled volumes. The possible values for this field are:
  /// Default - Data will be pulled from cool tier to standard storage on random reads. This policy is the default.
  /// OnRead - All client-driven data read is pulled from cool tier to standard storage on both sequential and random reads.
  /// Never - No client-driven data is pulled from cool tier to standard storage.
  final pulumi.Input<String>? coolAccessRetrievalPolicy;
  /// coolAccessTieringPolicy determines which cold data blocks are moved to cool tier. The possible values for this field are: Auto - Moves cold user data blocks in both the Snapshot copies and the active file system to the cool tier tier. This policy is the default. SnapshotOnly - Moves user data blocks of the Volume Snapshot copies that are not associated with the active file system to the cool tier.
  final pulumi.Input<String>? coolAccessTieringPolicy;
  /// Specifies the number of days after which data that is not accessed by clients will be tiered.
  final pulumi.Input<int>? coolnessPeriod;
  /// A unique file path for the volume. Used when creating mount targets
  final pulumi.Input<String> creationToken;
  /// DataProtection type volumes include an object containing details of the replication
  final pulumi.Input<VolumePropertiesDataProtection>? dataProtection;
  /// Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies.
  final pulumi.Input<double>? defaultGroupQuotaInKiBs;
  /// Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies .
  final pulumi.Input<double>? defaultUserQuotaInKiBs;
  /// If enabled (true) the snapshot the volume was created from will be automatically deleted after the volume create operation has finished.  Defaults to false
  final pulumi.Input<bool>? deleteBaseSnapshot;
  /// Flag indicating whether subvolume operations are enabled on the volume
  final pulumi.Input<String>? enableSubvolumes;
  /// Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  final pulumi.Input<String>? encryptionKeySource;
  /// Set of export policy rules
  final pulumi.Input<VolumePropertiesExportPolicy>? exportPolicy;
  /// Specifies if default quota is enabled for the volume.
  final pulumi.Input<bool>? isDefaultQuotaEnabled;
  /// Specifies whether volume is a Large Volume or Regular Volume.
  final pulumi.Input<bool>? isLargeVolume;
  /// Restoring
  final pulumi.Input<bool>? isRestoring;
  /// Describe if a volume is KerberosEnabled. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool>? kerberosEnabled;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final pulumi.Input<String>? keyVaultPrivateEndpointResourceId;
  /// Specifies whether LDAP is enabled or not for a given NFS volume.
  final pulumi.Input<bool>? ldapEnabled;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The original value of the network features type available to the volume at the time it was created.
  final pulumi.Input<String>? networkFeatures;
  /// Application specific placement rules for the particular volume
  final pulumi.Input<List<PlacementKeyValuePairs>>? placementRules;
  /// Set of protocol types, default NFSv3, CIFS for SMB protocol
  final pulumi.Input<List<String>>? protocolTypes;
  /// Proximity placement group associated with the volume
  final pulumi.Input<String>? proximityPlacementGroup;
  /// The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
  final pulumi.Input<String>? securityStyle;
  /// The service level of the file system
  final pulumi.Input<String>? serviceLevel;
  /// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<String>? smbAccessBasedEnumeration;
  /// Enables continuously available share property for smb volume. Only applicable for SMB volume
  final pulumi.Input<bool>? smbContinuouslyAvailable;
  /// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later
  final pulumi.Input<bool>? smbEncryption;
  /// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<String>? smbNonBrowsable;
  /// If enabled (true) the volume will contain a read-only snapshot directory which provides access to each of the volume's snapshots (defaults to true).
  final pulumi.Input<bool>? snapshotDirectoryVisible;
  /// Resource identifier used to identify the Snapshot.
  final pulumi.Input<String>? snapshotId;
  /// The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/volumes
  final pulumi.Input<String> subnetId;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<double>? throughputMibps;
  /// UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file: read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users.
  final pulumi.Input<String>? unixPermissions;
  /// Maximum storage quota allowed for a file system in bytes. This is a soft quota used for alerting only. For regular volumes, valid values are in the range 50GiB to 100TiB. For large volumes, valid values are in the range 100TiB to 500TiB, and on an exceptional basis, from to 2400GiB to 2400TiB. Values expressed in bytes as multiples of 1 GiB.
  final pulumi.Input<double> usageThreshold;
  /// Volume spec name is the application specific designation or identifier for the particular volume in a volume group for e.g. data, log
  final pulumi.Input<String>? volumeSpecName;
  /// What type of volume is this. For destination volumes in Cross Region Replication, set type to DataProtection
  final pulumi.Input<String>? volumeType;
  /// Availability Zone
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [VolumeGroupVolumeProperties].
  /// [avsDataStore] Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
  /// [backupId] Resource identifier used to identify the Backup.
  /// [capacityPoolResourceId] Pool Resource Id used in case of creating a volume through volume group
  /// [coolAccess] Specifies whether Cool Access(tiering) is enabled for the volume.
  /// [coolAccessRetrievalPolicy] coolAccessRetrievalPolicy determines the data retrieval behavior from the cool tier to standard storage based on the read pattern for cool access enabled volumes. The possible values for this field are:
  /// [coolAccessTieringPolicy] coolAccessTieringPolicy determines which cold data blocks are moved to cool tier. The possible values for this field are: Auto - Moves cold user data blocks in both the Snapshot copies and the active file system to the cool tier tier. This policy is the default. SnapshotOnly - Moves user data blocks of the Volume Snapshot copies that are not associated with the active file system to the cool tier.
  /// [coolnessPeriod] Specifies the number of days after which data that is not accessed by clients will be tiered.
  /// [creationToken] A unique file path for the volume. Used when creating mount targets
  /// [dataProtection] DataProtection type volumes include an object containing details of the replication
  /// [defaultGroupQuotaInKiBs] Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies.
  /// [defaultUserQuotaInKiBs] Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies .
  /// [deleteBaseSnapshot] If enabled (true) the snapshot the volume was created from will be automatically deleted after the volume create operation has finished.  Defaults to false
  /// [enableSubvolumes] Flag indicating whether subvolume operations are enabled on the volume
  /// [encryptionKeySource] Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  /// [exportPolicy] Set of export policy rules
  /// [isDefaultQuotaEnabled] Specifies if default quota is enabled for the volume.
  /// [isLargeVolume] Specifies whether volume is a Large Volume or Regular Volume.
  /// [isRestoring] Restoring
  /// [kerberosEnabled] Describe if a volume is KerberosEnabled. To be use with swagger version 2020-05-01 or later
  /// [keyVaultPrivateEndpointResourceId] The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  /// [ldapEnabled] Specifies whether LDAP is enabled or not for a given NFS volume.
  /// [name] Resource name
  /// [networkFeatures] The original value of the network features type available to the volume at the time it was created.
  /// [placementRules] Application specific placement rules for the particular volume
  /// [protocolTypes] Set of protocol types, default NFSv3, CIFS for SMB protocol
  /// [proximityPlacementGroup] Proximity placement group associated with the volume
  /// [securityStyle] The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
  /// [serviceLevel] The service level of the file system
  /// [smbAccessBasedEnumeration] Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [smbContinuouslyAvailable] Enables continuously available share property for smb volume. Only applicable for SMB volume
  /// [smbEncryption] Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later
  /// [smbNonBrowsable] Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [snapshotDirectoryVisible] If enabled (true) the volume will contain a read-only snapshot directory which provides access to each of the volume's snapshots (defaults to true).
  /// [snapshotId] Resource identifier used to identify the Snapshot.
  /// [subnetId] The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/volumes
  /// [tags] Resource tags
  /// [throughputMibps] Optional.
  /// [unixPermissions] UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file: read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users.
  /// [usageThreshold] Maximum storage quota allowed for a file system in bytes. This is a soft quota used for alerting only. For regular volumes, valid values are in the range 50GiB to 100TiB. For large volumes, valid values are in the range 100TiB to 500TiB, and on an exceptional basis, from to 2400GiB to 2400TiB. Values expressed in bytes as multiples of 1 GiB.
  /// [volumeSpecName] Volume spec name is the application specific designation or identifier for the particular volume in a volume group for e.g. data, log
  /// [volumeType] What type of volume is this. For destination volumes in Cross Region Replication, set type to DataProtection
  /// [zones] Availability Zone
  const VolumeGroupVolumeProperties({
    this.avsDataStore,
    this.backupId,
    this.capacityPoolResourceId,
    this.coolAccess,
    this.coolAccessRetrievalPolicy,
    this.coolAccessTieringPolicy,
    this.coolnessPeriod,
    required this.creationToken,
    this.dataProtection,
    this.defaultGroupQuotaInKiBs,
    this.defaultUserQuotaInKiBs,
    this.deleteBaseSnapshot,
    this.enableSubvolumes,
    this.encryptionKeySource,
    this.exportPolicy,
    this.isDefaultQuotaEnabled,
    this.isLargeVolume,
    this.isRestoring,
    this.kerberosEnabled,
    this.keyVaultPrivateEndpointResourceId,
    this.ldapEnabled,
    this.name,
    this.networkFeatures,
    this.placementRules,
    this.protocolTypes,
    this.proximityPlacementGroup,
    this.securityStyle,
    this.serviceLevel,
    this.smbAccessBasedEnumeration,
    this.smbContinuouslyAvailable,
    this.smbEncryption,
    this.smbNonBrowsable,
    this.snapshotDirectoryVisible,
    this.snapshotId,
    required this.subnetId,
    this.tags,
    this.throughputMibps,
    this.unixPermissions,
    required this.usageThreshold,
    this.volumeSpecName,
    this.volumeType,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avsDataStore': ?avsDataStore,
      'backupId': ?backupId,
      'capacityPoolResourceId': ?capacityPoolResourceId,
      'coolAccess': ?coolAccess,
      'coolAccessRetrievalPolicy': ?coolAccessRetrievalPolicy,
      'coolAccessTieringPolicy': ?coolAccessTieringPolicy,
      'coolnessPeriod': ?coolnessPeriod,
      'creationToken': creationToken,
      'dataProtection': ?pulumi.Input.mapOptionalInputValue<VolumePropertiesDataProtection, Map<String, dynamic>>(dataProtection, (value) => value.toMap()),
      'defaultGroupQuotaInKiBs': ?defaultGroupQuotaInKiBs,
      'defaultUserQuotaInKiBs': ?defaultUserQuotaInKiBs,
      'deleteBaseSnapshot': ?deleteBaseSnapshot,
      'enableSubvolumes': ?enableSubvolumes,
      'encryptionKeySource': ?encryptionKeySource,
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<VolumePropertiesExportPolicy, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'isDefaultQuotaEnabled': ?isDefaultQuotaEnabled,
      'isLargeVolume': ?isLargeVolume,
      'isRestoring': ?isRestoring,
      'kerberosEnabled': ?kerberosEnabled,
      'keyVaultPrivateEndpointResourceId': ?keyVaultPrivateEndpointResourceId,
      'ldapEnabled': ?ldapEnabled,
      'name': ?name,
      'networkFeatures': ?networkFeatures,
      'placementRules': ?pulumi.Input.mapOptionalInputValue<List<PlacementKeyValuePairs>, List<Map<String, dynamic>>>(placementRules, (value) => pulumi.Input.encodeList<PlacementKeyValuePairs, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocolTypes': ?protocolTypes,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'securityStyle': ?securityStyle,
      'serviceLevel': ?serviceLevel,
      'smbAccessBasedEnumeration': ?smbAccessBasedEnumeration,
      'smbContinuouslyAvailable': ?smbContinuouslyAvailable,
      'smbEncryption': ?smbEncryption,
      'smbNonBrowsable': ?smbNonBrowsable,
      'snapshotDirectoryVisible': ?snapshotDirectoryVisible,
      'snapshotId': ?snapshotId,
      'subnetId': subnetId,
      'tags': ?tags,
      'throughputMibps': ?throughputMibps,
      'unixPermissions': ?unixPermissions,
      'usageThreshold': usageThreshold,
      'volumeSpecName': ?volumeSpecName,
      'volumeType': ?volumeType,
      'zones': ?zones,
    };
  }

  factory VolumeGroupVolumeProperties.fromMap(Map<String, dynamic> map) {
    return VolumeGroupVolumeProperties(
      avsDataStore: (() { final guardedValue = map['avsDataStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityPoolResourceId: (() { final guardedValue = map['capacityPoolResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coolAccess: (() { final guardedValue = map['coolAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      coolAccessRetrievalPolicy: (() { final guardedValue = map['coolAccessRetrievalPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coolAccessTieringPolicy: (() { final guardedValue = map['coolAccessTieringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coolnessPeriod: (() { final guardedValue = map['coolnessPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      creationToken: pulumi.Input.fromValue(map['creationToken'] as String),
      dataProtection: (() { final guardedValue = map['dataProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumePropertiesDataProtection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultGroupQuotaInKiBs: (() { final guardedValue = map['defaultGroupQuotaInKiBs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      defaultUserQuotaInKiBs: (() { final guardedValue = map['defaultUserQuotaInKiBs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      deleteBaseSnapshot: (() { final guardedValue = map['deleteBaseSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSubvolumes: (() { final guardedValue = map['enableSubvolumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeySource: (() { final guardedValue = map['encryptionKeySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportPolicy: (() { final guardedValue = map['exportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumePropertiesExportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isDefaultQuotaEnabled: (() { final guardedValue = map['isDefaultQuotaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLargeVolume: (() { final guardedValue = map['isLargeVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRestoring: (() { final guardedValue = map['isRestoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberosEnabled: (() { final guardedValue = map['kerberosEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultPrivateEndpointResourceId: (() { final guardedValue = map['keyVaultPrivateEndpointResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldapEnabled: (() { final guardedValue = map['ldapEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFeatures: (() { final guardedValue = map['networkFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementRules: (() { final guardedValue = map['placementRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlacementKeyValuePairs>(guardedValue, (value) => PlacementKeyValuePairs.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocolTypes: (() { final guardedValue = map['protocolTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      proximityPlacementGroup: (() { final guardedValue = map['proximityPlacementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityStyle: (() { final guardedValue = map['securityStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLevel: (() { final guardedValue = map['serviceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbAccessBasedEnumeration: (() { final guardedValue = map['smbAccessBasedEnumeration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbContinuouslyAvailable: (() { final guardedValue = map['smbContinuouslyAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbEncryption: (() { final guardedValue = map['smbEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbNonBrowsable: (() { final guardedValue = map['smbNonBrowsable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotDirectoryVisible: (() { final guardedValue = map['snapshotDirectoryVisible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputMibps: (() { final guardedValue = map['throughputMibps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      unixPermissions: (() { final guardedValue = map['unixPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageThreshold: pulumi.Input.fromValue(map['usageThreshold'] as double),
      volumeSpecName: (() { final guardedValue = map['volumeSpecName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

