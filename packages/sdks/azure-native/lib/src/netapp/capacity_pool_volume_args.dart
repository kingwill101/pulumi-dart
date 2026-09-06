// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_key_value_pairs.dart';
import 'volume_properties_data_protection.dart';
import 'volume_properties_export_policy.dart';

/// {@template pulumi_netapp_capacity_pool_volume_args_doc}
/// The set of arguments for CapacityPoolVolume.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_volume_args_doc}
class CapacityPoolVolumeArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
  final pulumi.Input<dynamic>? avsDataStore;
  /// Resource identifier used to identify the Backup.
  final pulumi.Input<String?>? backupId;
  /// Pool Resource Id used in case of creating a volume through volume group
  final pulumi.Input<String?>? capacityPoolResourceId;
  /// Specifies whether Cool Access(tiering) is enabled for the volume.
  final pulumi.Input<bool?>? coolAccess;
  /// coolAccessRetrievalPolicy determines the data retrieval behavior from the cool tier to standard storage based on the read pattern for cool access enabled volumes. The possible values for this field are:
  /// Default - Data will be pulled from cool tier to standard storage on random reads. This policy is the default.
  /// OnRead - All client-driven data read is pulled from cool tier to standard storage on both sequential and random reads.
  /// Never - No client-driven data is pulled from cool tier to standard storage.
  final pulumi.Input<dynamic>? coolAccessRetrievalPolicy;
  /// coolAccessTieringPolicy determines which cold data blocks are moved to cool tier. The possible values for this field are: Auto - Moves cold user data blocks in both the Snapshot copies and the active file system to the cool tier tier. This policy is the default. SnapshotOnly - Moves user data blocks of the Volume Snapshot copies that are not associated with the active file system to the cool tier.
  final pulumi.Input<dynamic>? coolAccessTieringPolicy;
  /// Specifies the number of days after which data that is not accessed by clients will be tiered.
  final pulumi.Input<int?>? coolnessPeriod;
  /// A unique file path for the volume. Used when creating mount targets
  final pulumi.Input<String> creationToken;
  /// DataProtection type volumes include an object containing details of the replication
  final pulumi.Input<VolumePropertiesDataProtection?>? dataProtection;
  /// Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies.
  final pulumi.Input<double?>? defaultGroupQuotaInKiBs;
  /// Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies .
  final pulumi.Input<double?>? defaultUserQuotaInKiBs;
  /// If enabled (true) the snapshot the volume was created from will be automatically deleted after the volume create operation has finished.  Defaults to false
  final pulumi.Input<bool?>? deleteBaseSnapshot;
  /// Flag indicating whether subvolume operations are enabled on the volume
  final pulumi.Input<dynamic>? enableSubvolumes;
  /// Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  final pulumi.Input<dynamic>? encryptionKeySource;
  /// Set of export policy rules
  final pulumi.Input<VolumePropertiesExportPolicy?>? exportPolicy;
  /// Specifies if default quota is enabled for the volume.
  final pulumi.Input<bool?>? isDefaultQuotaEnabled;
  /// Specifies whether volume is a Large Volume or Regular Volume.
  final pulumi.Input<bool?>? isLargeVolume;
  /// Restoring
  final pulumi.Input<bool?>? isRestoring;
  /// Describe if a volume is KerberosEnabled. To be use with swagger version 2020-05-01 or later
  final pulumi.Input<bool?>? kerberosEnabled;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final pulumi.Input<String?>? keyVaultPrivateEndpointResourceId;
  /// Specifies whether LDAP is enabled or not for a given NFS volume.
  final pulumi.Input<bool?>? ldapEnabled;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The original value of the network features type available to the volume at the time it was created.
  final pulumi.Input<dynamic>? networkFeatures;
  /// Application specific placement rules for the particular volume
  final pulumi.Input<List<PlacementKeyValuePairs>?>? placementRules;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// Set of protocol types, default NFSv3, CIFS for SMB protocol
  final pulumi.Input<List<String>?>? protocolTypes;
  /// Proximity placement group associated with the volume
  final pulumi.Input<String?>? proximityPlacementGroup;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
  final pulumi.Input<dynamic>? securityStyle;
  /// The service level of the file system
  final pulumi.Input<dynamic>? serviceLevel;
  /// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<dynamic>? smbAccessBasedEnumeration;
  /// Enables continuously available share property for smb volume. Only applicable for SMB volume
  final pulumi.Input<bool?>? smbContinuouslyAvailable;
  /// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later
  final pulumi.Input<bool?>? smbEncryption;
  /// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  final pulumi.Input<dynamic>? smbNonBrowsable;
  /// If enabled (true) the volume will contain a read-only snapshot directory which provides access to each of the volume's snapshots (defaults to true).
  final pulumi.Input<bool?>? snapshotDirectoryVisible;
  /// Resource identifier used to identify the Snapshot.
  final pulumi.Input<String?>? snapshotId;
  /// The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/volumes
  final pulumi.Input<String> subnetId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<double?>? throughputMibps;
  /// UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file: read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users.
  final pulumi.Input<String?>? unixPermissions;
  /// Maximum storage quota allowed for a file system in bytes. This is a soft quota used for alerting only. For regular volumes, valid values are in the range 50GiB to 100TiB. For large volumes, valid values are in the range 100TiB to 500TiB, and on an exceptional basis, from to 2400GiB to 2400TiB. Values expressed in bytes as multiples of 1 GiB.
  final pulumi.Input<double> usageThreshold;
  /// The name of the volume
  final pulumi.Input<String?>? volumeName;
  /// Volume spec name is the application specific designation or identifier for the particular volume in a volume group for e.g. data, log
  final pulumi.Input<String?>? volumeSpecName;
  /// What type of volume is this. For destination volumes in Cross Region Replication, set type to DataProtection
  final pulumi.Input<String?>? volumeType;
  /// Availability Zone
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [CapacityPoolVolumeArgs].
  /// [accountName] The name of the NetApp account
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
  /// [location] The geo-location where the resource lives
  /// [networkFeatures] The original value of the network features type available to the volume at the time it was created.
  /// [placementRules] Application specific placement rules for the particular volume
  /// [poolName] The name of the capacity pool
  /// [protocolTypes] Set of protocol types, default NFSv3, CIFS for SMB protocol
  /// [proximityPlacementGroup] Proximity placement group associated with the volume
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityStyle] The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
  /// [serviceLevel] The service level of the file system
  /// [smbAccessBasedEnumeration] Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [smbContinuouslyAvailable] Enables continuously available share property for smb volume. Only applicable for SMB volume
  /// [smbEncryption] Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later
  /// [smbNonBrowsable] Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  /// [snapshotDirectoryVisible] If enabled (true) the volume will contain a read-only snapshot directory which provides access to each of the volume's snapshots (defaults to true).
  /// [snapshotId] Resource identifier used to identify the Snapshot.
  /// [subnetId] The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/volumes
  /// [tags] Resource tags.
  /// [throughputMibps] Optional.
  /// [unixPermissions] UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file: read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users.
  /// [usageThreshold] Maximum storage quota allowed for a file system in bytes. This is a soft quota used for alerting only. For regular volumes, valid values are in the range 50GiB to 100TiB. For large volumes, valid values are in the range 100TiB to 500TiB, and on an exceptional basis, from to 2400GiB to 2400TiB. Values expressed in bytes as multiples of 1 GiB.
  /// [volumeName] The name of the volume
  /// [volumeSpecName] Volume spec name is the application specific designation or identifier for the particular volume in a volume group for e.g. data, log
  /// [volumeType] What type of volume is this. For destination volumes in Cross Region Replication, set type to DataProtection
  /// [zones] Availability Zone
  CapacityPoolVolumeArgs({
    required this.accountName,
    pulumi.Input<dynamic>? avsDataStore,
    this.backupId,
    this.capacityPoolResourceId,
    pulumi.Input<bool?>? coolAccess,
    this.coolAccessRetrievalPolicy,
    this.coolAccessTieringPolicy,
    this.coolnessPeriod,
    required this.creationToken,
    this.dataProtection,
    pulumi.Input<double?>? defaultGroupQuotaInKiBs,
    pulumi.Input<double?>? defaultUserQuotaInKiBs,
    this.deleteBaseSnapshot,
    pulumi.Input<dynamic>? enableSubvolumes,
    pulumi.Input<dynamic>? encryptionKeySource,
    this.exportPolicy,
    pulumi.Input<bool?>? isDefaultQuotaEnabled,
    pulumi.Input<bool?>? isLargeVolume,
    this.isRestoring,
    pulumi.Input<bool?>? kerberosEnabled,
    this.keyVaultPrivateEndpointResourceId,
    pulumi.Input<bool?>? ldapEnabled,
    this.location,
    this.networkFeatures,
    this.placementRules,
    required this.poolName,
    this.protocolTypes,
    this.proximityPlacementGroup,
    required this.resourceGroupName,
    pulumi.Input<dynamic>? securityStyle,
    this.serviceLevel,
    this.smbAccessBasedEnumeration,
    pulumi.Input<bool?>? smbContinuouslyAvailable,
    pulumi.Input<bool?>? smbEncryption,
    this.smbNonBrowsable,
    pulumi.Input<bool?>? snapshotDirectoryVisible,
    this.snapshotId,
    required this.subnetId,
    this.tags,
    this.throughputMibps,
    this.unixPermissions,
    pulumi.Input<double>? usageThreshold,
    this.volumeName,
    this.volumeSpecName,
    this.volumeType,
    this.zones,
  }) : avsDataStore = avsDataStore ?? pulumi.Input.fromValue('Disabled'), coolAccess = coolAccess ?? pulumi.Input.fromValue(false), defaultGroupQuotaInKiBs = defaultGroupQuotaInKiBs ?? pulumi.Input.fromValue(0), defaultUserQuotaInKiBs = defaultUserQuotaInKiBs ?? pulumi.Input.fromValue(0), enableSubvolumes = enableSubvolumes ?? pulumi.Input.fromValue('Disabled'), encryptionKeySource = encryptionKeySource ?? pulumi.Input.fromValue('Microsoft.NetApp'), isDefaultQuotaEnabled = isDefaultQuotaEnabled ?? pulumi.Input.fromValue(false), isLargeVolume = isLargeVolume ?? pulumi.Input.fromValue(false), kerberosEnabled = kerberosEnabled ?? pulumi.Input.fromValue(false), ldapEnabled = ldapEnabled ?? pulumi.Input.fromValue(false), securityStyle = securityStyle ?? pulumi.Input.fromValue('unix'), smbContinuouslyAvailable = smbContinuouslyAvailable ?? pulumi.Input.fromValue(false), smbEncryption = smbEncryption ?? pulumi.Input.fromValue(false), snapshotDirectoryVisible = snapshotDirectoryVisible ?? pulumi.Input.fromValue(true), usageThreshold = usageThreshold ?? pulumi.Input.fromValue(1.073741824e+11);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
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
      'location': ?location,
      'networkFeatures': ?networkFeatures,
      'placementRules': ?pulumi.Input.mapOptionalInputValue<List<PlacementKeyValuePairs>, List<Map<String, dynamic>>>(placementRules, (value) => pulumi.Input.encodeList<PlacementKeyValuePairs, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolName': poolName,
      'protocolTypes': ?protocolTypes,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'resourceGroupName': resourceGroupName,
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
      'volumeName': ?volumeName,
      'volumeSpecName': ?volumeSpecName,
      'volumeType': ?volumeType,
      'zones': ?zones,
    };
  }

  factory CapacityPoolVolumeArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolVolumeArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      avsDataStore: (() { final guardedValue = map['avsDataStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityPoolResourceId: (() { final guardedValue = map['capacityPoolResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coolAccess: (() { final guardedValue = map['coolAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      coolAccessRetrievalPolicy: (() { final guardedValue = map['coolAccessRetrievalPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      coolAccessTieringPolicy: (() { final guardedValue = map['coolAccessTieringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      coolnessPeriod: (() { final guardedValue = map['coolnessPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      creationToken: pulumi.Input.fromValue(map['creationToken'] as String),
      dataProtection: (() { final guardedValue = map['dataProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumePropertiesDataProtection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultGroupQuotaInKiBs: (() { final guardedValue = map['defaultGroupQuotaInKiBs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      defaultUserQuotaInKiBs: (() { final guardedValue = map['defaultUserQuotaInKiBs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      deleteBaseSnapshot: (() { final guardedValue = map['deleteBaseSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSubvolumes: (() { final guardedValue = map['enableSubvolumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      encryptionKeySource: (() { final guardedValue = map['encryptionKeySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      exportPolicy: (() { final guardedValue = map['exportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumePropertiesExportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isDefaultQuotaEnabled: (() { final guardedValue = map['isDefaultQuotaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLargeVolume: (() { final guardedValue = map['isLargeVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRestoring: (() { final guardedValue = map['isRestoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberosEnabled: (() { final guardedValue = map['kerberosEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultPrivateEndpointResourceId: (() { final guardedValue = map['keyVaultPrivateEndpointResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldapEnabled: (() { final guardedValue = map['ldapEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFeatures: (() { final guardedValue = map['networkFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      placementRules: (() { final guardedValue = map['placementRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlacementKeyValuePairs>(guardedValue, (value) => PlacementKeyValuePairs.fromMap((value as Map).cast<String, dynamic>()))); })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      protocolTypes: (() { final guardedValue = map['protocolTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      proximityPlacementGroup: (() { final guardedValue = map['proximityPlacementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityStyle: (() { final guardedValue = map['securityStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceLevel: (() { final guardedValue = map['serviceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      smbAccessBasedEnumeration: (() { final guardedValue = map['smbAccessBasedEnumeration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      smbContinuouslyAvailable: (() { final guardedValue = map['smbContinuouslyAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbEncryption: (() { final guardedValue = map['smbEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbNonBrowsable: (() { final guardedValue = map['smbNonBrowsable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      snapshotDirectoryVisible: (() { final guardedValue = map['snapshotDirectoryVisible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputMibps: (() { final guardedValue = map['throughputMibps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      unixPermissions: (() { final guardedValue = map['unixPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageThreshold: pulumi.Input.fromValue((map['usageThreshold'] as num).toDouble()),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSpecName: (() { final guardedValue = map['volumeSpecName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
