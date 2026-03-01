// ignore_for_file: unused_element, unnecessary_cast

import 'cache_properties_export_policy.dart';
import 'origin_cluster_information.dart';
import 'smb_settings.dart';

/// Cache resource properties
class CacheProperties {
  /// The Azure Resource URI for a delegated cache subnet that will be used to allocate data IPs.
  final String cacheSubnetResourceId;
  /// Flag indicating whether a CIFS change notification is enabled for the cache.
  final String? cifsChangeNotifications;
  /// Source of key used to encrypt data in the cache. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  final String encryptionKeySource;
  /// Set of export policy rules
  final CachePropertiesExportPolicy? exportPolicy;
  /// The file path of the Cache.
  final String filepath;
  /// Flag indicating whether the global file lock is enabled for the cache.
  final String? globalFileLocking;
  /// Describe if a cache is Kerberos enabled.
  final String? kerberos;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final String? keyVaultPrivateEndpointResourceId;
  /// Specifies whether LDAP is enabled or not for flexcache volume.
  final String? ldap;
  /// Specifies the type of LDAP server for flexcache volume.
  final String? ldapServerType;
  /// Origin cluster information
  final OriginClusterInformation originClusterInformation;
  /// The Azure Resource URI for a delegated subnet that will be used for ANF Intercluster Interface IP addresses.
  final String peeringSubnetResourceId;
  /// Set of supported protocol types, which include NFSv3, NFSv4 and SMB protocol
  final List<String>? protocolTypes;
  /// Maximum storage quota allowed for a file system in bytes. Valid values are in the range 50GiB to 1PiB. Values expressed in bytes as multiples of 1GiB.
  final double size;
  /// SMB information for the cache
  final SmbSettings? smbSettings;
  /// Maximum throughput in MiB/s that can be achieved by this cache volume and this will be accepted as input only for manual qosType cache
  final double? throughputMibps;
  /// Flag indicating whether writeback is enabled for the cache.
  final String? writeBack;

  /// Creates a new [CacheProperties].
  /// [cacheSubnetResourceId] The Azure Resource URI for a delegated cache subnet that will be used to allocate data IPs.
  /// [cifsChangeNotifications] Flag indicating whether a CIFS change notification is enabled for the cache.
  /// [encryptionKeySource] Source of key used to encrypt data in the cache. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  /// [exportPolicy] Set of export policy rules
  /// [filepath] The file path of the Cache.
  /// [globalFileLocking] Flag indicating whether the global file lock is enabled for the cache.
  /// [kerberos] Describe if a cache is Kerberos enabled.
  /// [keyVaultPrivateEndpointResourceId] The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  /// [ldap] Specifies whether LDAP is enabled or not for flexcache volume.
  /// [ldapServerType] Specifies the type of LDAP server for flexcache volume.
  /// [originClusterInformation] Origin cluster information
  /// [peeringSubnetResourceId] The Azure Resource URI for a delegated subnet that will be used for ANF Intercluster Interface IP addresses.
  /// [protocolTypes] Set of supported protocol types, which include NFSv3, NFSv4 and SMB protocol
  /// [size] Maximum storage quota allowed for a file system in bytes. Valid values are in the range 50GiB to 1PiB. Values expressed in bytes as multiples of 1GiB.
  /// [smbSettings] SMB information for the cache
  /// [throughputMibps] Maximum throughput in MiB/s that can be achieved by this cache volume and this will be accepted as input only for manual qosType cache
  /// [writeBack] Flag indicating whether writeback is enabled for the cache.
  CacheProperties({
    required this.cacheSubnetResourceId,
    this.cifsChangeNotifications,
    required this.encryptionKeySource,
    this.exportPolicy,
    required this.filepath,
    this.globalFileLocking,
    this.kerberos,
    this.keyVaultPrivateEndpointResourceId,
    this.ldap,
    this.ldapServerType,
    required this.originClusterInformation,
    required this.peeringSubnetResourceId,
    this.protocolTypes,
    required this.size,
    this.smbSettings,
    this.throughputMibps,
    this.writeBack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheSubnetResourceId': cacheSubnetResourceId,
      'cifsChangeNotifications': ?cifsChangeNotifications,
      'encryptionKeySource': encryptionKeySource,
      'exportPolicy': ?exportPolicy == null ? null : exportPolicy!.toMap(),
      'filepath': filepath,
      'globalFileLocking': ?globalFileLocking,
      'kerberos': ?kerberos,
      'keyVaultPrivateEndpointResourceId': ?keyVaultPrivateEndpointResourceId,
      'ldap': ?ldap,
      'ldapServerType': ?ldapServerType,
      'originClusterInformation': originClusterInformation.toMap(),
      'peeringSubnetResourceId': peeringSubnetResourceId,
      'protocolTypes': ?protocolTypes,
      'size': size,
      'smbSettings': ?smbSettings == null ? null : smbSettings!.toMap(),
      'throughputMibps': ?throughputMibps,
      'writeBack': ?writeBack,
    };
  }

  factory CacheProperties.fromMap(Map<String, dynamic> map) {
    return CacheProperties(
      cacheSubnetResourceId: map['cacheSubnetResourceId'] as String,
      cifsChangeNotifications: map['cifsChangeNotifications'] == null ? null : map['cifsChangeNotifications'] as String,
      encryptionKeySource: map['encryptionKeySource'] as String,
      exportPolicy: map['exportPolicy'] == null ? null : CachePropertiesExportPolicy.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>()),
      filepath: map['filepath'] as String,
      globalFileLocking: map['globalFileLocking'] == null ? null : map['globalFileLocking'] as String,
      kerberos: map['kerberos'] == null ? null : map['kerberos'] as String,
      keyVaultPrivateEndpointResourceId: map['keyVaultPrivateEndpointResourceId'] == null ? null : map['keyVaultPrivateEndpointResourceId'] as String,
      ldap: map['ldap'] == null ? null : map['ldap'] as String,
      ldapServerType: map['ldapServerType'] == null ? null : map['ldapServerType'] as String,
      originClusterInformation: OriginClusterInformation.fromMap((map['originClusterInformation'] as Map).cast<String, dynamic>()),
      peeringSubnetResourceId: map['peeringSubnetResourceId'] as String,
      protocolTypes: map['protocolTypes'] == null ? null : (map['protocolTypes'] as List).cast<String>(),
      size: map['size'] as double,
      smbSettings: map['smbSettings'] == null ? null : SmbSettings.fromMap((map['smbSettings'] as Map).cast<String, dynamic>()),
      throughputMibps: map['throughputMibps'] == null ? null : map['throughputMibps'] as double,
      writeBack: map['writeBack'] == null ? null : map['writeBack'] as String,
    );
  }
}

