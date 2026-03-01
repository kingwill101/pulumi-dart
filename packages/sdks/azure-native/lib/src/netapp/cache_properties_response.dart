// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_mount_target_properties_response.dart';
import 'cache_properties_export_policy_response.dart';
import 'origin_cluster_information_response.dart';
import 'smb_settings_response.dart';

/// Cache resource properties
class CachePropertiesResponse {
  /// Actual throughput in MiB/s for auto qosType volumes calculated based on size and serviceLevel
  final double actualThroughputMibps;
  /// Azure NetApp Files Cache lifecycle management
  final String cacheState;
  /// The Azure Resource URI for a delegated cache subnet that will be used to allocate data IPs.
  final String cacheSubnetResourceId;
  /// Flag indicating whether a CIFS change notification is enabled for the cache.
  final String? cifsChangeNotifications;
  /// Specifies if the cache is encryption or not.
  final String encryption;
  /// Source of key used to encrypt data in the cache. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  final String encryptionKeySource;
  /// Set of export policy rules
  final CachePropertiesExportPolicyResponse? exportPolicy;
  /// The file path of the Cache.
  final String filepath;
  /// Flag indicating whether the global file lock is enabled for the cache.
  final String? globalFileLocking;
  /// Describe if a cache is Kerberos enabled.
  final String? kerberos;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final String? keyVaultPrivateEndpointResourceId;
  /// Language supported for volume.
  final String language;
  /// Specifies whether LDAP is enabled or not for flexcache volume.
  final String? ldap;
  /// Specifies the type of LDAP server for flexcache volume.
  final String? ldapServerType;
  /// Maximum number of files allowed.
  final double maximumNumberOfFiles;
  /// List of mount targets that can be used to mount this cache
  final List<CacheMountTargetPropertiesResponse> mountTargets;
  /// Origin cluster information
  final OriginClusterInformationResponse originClusterInformation;
  /// The Azure Resource URI for a delegated subnet that will be used for ANF Intercluster Interface IP addresses.
  final String peeringSubnetResourceId;
  /// Set of supported protocol types, which include NFSv3, NFSv4 and SMB protocol
  final List<String>? protocolTypes;
  /// Azure lifecycle management
  final String provisioningState;
  /// Maximum storage quota allowed for a file system in bytes. Valid values are in the range 50GiB to 1PiB. Values expressed in bytes as multiples of 1GiB.
  final double size;
  /// SMB information for the cache
  final SmbSettingsResponse? smbSettings;
  /// Maximum throughput in MiB/s that can be achieved by this cache volume and this will be accepted as input only for manual qosType cache
  final double? throughputMibps;
  /// Flag indicating whether writeback is enabled for the cache.
  final String? writeBack;

  /// Creates a new [CachePropertiesResponse].
  /// [actualThroughputMibps] Actual throughput in MiB/s for auto qosType volumes calculated based on size and serviceLevel
  /// [cacheState] Azure NetApp Files Cache lifecycle management
  /// [cacheSubnetResourceId] The Azure Resource URI for a delegated cache subnet that will be used to allocate data IPs.
  /// [cifsChangeNotifications] Flag indicating whether a CIFS change notification is enabled for the cache.
  /// [encryption] Specifies if the cache is encryption or not.
  /// [encryptionKeySource] Source of key used to encrypt data in the cache. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  /// [exportPolicy] Set of export policy rules
  /// [filepath] The file path of the Cache.
  /// [globalFileLocking] Flag indicating whether the global file lock is enabled for the cache.
  /// [kerberos] Describe if a cache is Kerberos enabled.
  /// [keyVaultPrivateEndpointResourceId] The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  /// [language] Language supported for volume.
  /// [ldap] Specifies whether LDAP is enabled or not for flexcache volume.
  /// [ldapServerType] Specifies the type of LDAP server for flexcache volume.
  /// [maximumNumberOfFiles] Maximum number of files allowed.
  /// [mountTargets] List of mount targets that can be used to mount this cache
  /// [originClusterInformation] Origin cluster information
  /// [peeringSubnetResourceId] The Azure Resource URI for a delegated subnet that will be used for ANF Intercluster Interface IP addresses.
  /// [protocolTypes] Set of supported protocol types, which include NFSv3, NFSv4 and SMB protocol
  /// [provisioningState] Azure lifecycle management
  /// [size] Maximum storage quota allowed for a file system in bytes. Valid values are in the range 50GiB to 1PiB. Values expressed in bytes as multiples of 1GiB.
  /// [smbSettings] SMB information for the cache
  /// [throughputMibps] Maximum throughput in MiB/s that can be achieved by this cache volume and this will be accepted as input only for manual qosType cache
  /// [writeBack] Flag indicating whether writeback is enabled for the cache.
  CachePropertiesResponse({
    required this.actualThroughputMibps,
    required this.cacheState,
    required this.cacheSubnetResourceId,
    this.cifsChangeNotifications,
    required this.encryption,
    required this.encryptionKeySource,
    this.exportPolicy,
    required this.filepath,
    this.globalFileLocking,
    this.kerberos,
    this.keyVaultPrivateEndpointResourceId,
    required this.language,
    this.ldap,
    this.ldapServerType,
    required this.maximumNumberOfFiles,
    required this.mountTargets,
    required this.originClusterInformation,
    required this.peeringSubnetResourceId,
    this.protocolTypes,
    required this.provisioningState,
    required this.size,
    this.smbSettings,
    this.throughputMibps,
    this.writeBack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualThroughputMibps': actualThroughputMibps,
      'cacheState': cacheState,
      'cacheSubnetResourceId': cacheSubnetResourceId,
      'cifsChangeNotifications': ?cifsChangeNotifications,
      'encryption': encryption,
      'encryptionKeySource': encryptionKeySource,
      'exportPolicy': ?exportPolicy == null ? null : exportPolicy!.toMap(),
      'filepath': filepath,
      'globalFileLocking': ?globalFileLocking,
      'kerberos': ?kerberos,
      'keyVaultPrivateEndpointResourceId': ?keyVaultPrivateEndpointResourceId,
      'language': language,
      'ldap': ?ldap,
      'ldapServerType': ?ldapServerType,
      'maximumNumberOfFiles': maximumNumberOfFiles,
      'mountTargets': pulumi.Input.encodeList<CacheMountTargetPropertiesResponse, Map<String, dynamic>>(mountTargets, (value) => value.toMap()),
      'originClusterInformation': originClusterInformation.toMap(),
      'peeringSubnetResourceId': peeringSubnetResourceId,
      'protocolTypes': ?protocolTypes,
      'provisioningState': provisioningState,
      'size': size,
      'smbSettings': ?smbSettings == null ? null : smbSettings!.toMap(),
      'throughputMibps': ?throughputMibps,
      'writeBack': ?writeBack,
    };
  }

  factory CachePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CachePropertiesResponse(
      actualThroughputMibps: map['actualThroughputMibps'] as double,
      cacheState: map['cacheState'] as String,
      cacheSubnetResourceId: map['cacheSubnetResourceId'] as String,
      cifsChangeNotifications: map['cifsChangeNotifications'] == null ? null : map['cifsChangeNotifications'] as String,
      encryption: map['encryption'] as String,
      encryptionKeySource: map['encryptionKeySource'] as String,
      exportPolicy: map['exportPolicy'] == null ? null : CachePropertiesExportPolicyResponse.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>()),
      filepath: map['filepath'] as String,
      globalFileLocking: map['globalFileLocking'] == null ? null : map['globalFileLocking'] as String,
      kerberos: map['kerberos'] == null ? null : map['kerberos'] as String,
      keyVaultPrivateEndpointResourceId: map['keyVaultPrivateEndpointResourceId'] == null ? null : map['keyVaultPrivateEndpointResourceId'] as String,
      language: map['language'] as String,
      ldap: map['ldap'] == null ? null : map['ldap'] as String,
      ldapServerType: map['ldapServerType'] == null ? null : map['ldapServerType'] as String,
      maximumNumberOfFiles: map['maximumNumberOfFiles'] as double,
      mountTargets: pulumi.Input.decodeList<CacheMountTargetPropertiesResponse>(map['mountTargets'], (value) => CacheMountTargetPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      originClusterInformation: OriginClusterInformationResponse.fromMap((map['originClusterInformation'] as Map).cast<String, dynamic>()),
      peeringSubnetResourceId: map['peeringSubnetResourceId'] as String,
      protocolTypes: map['protocolTypes'] == null ? null : (map['protocolTypes'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      size: map['size'] as double,
      smbSettings: map['smbSettings'] == null ? null : SmbSettingsResponse.fromMap((map['smbSettings'] as Map).cast<String, dynamic>()),
      throughputMibps: map['throughputMibps'] == null ? null : map['throughputMibps'] as double,
      writeBack: map['writeBack'] == null ? null : map['writeBack'] as String,
    );
  }
}

