// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_properties_export_policy.dart';
import 'origin_cluster_information.dart';
import 'smb_settings.dart';

/// Cache resource properties
class CacheProperties {
  /// The Azure Resource URI for a delegated cache subnet that will be used to allocate data IPs.
  final pulumi.Input<String> cacheSubnetResourceId;
  /// Flag indicating whether a CIFS change notification is enabled for the cache.
  final pulumi.Input<String>? cifsChangeNotifications;
  /// Source of key used to encrypt data in the cache. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  final pulumi.Input<String> encryptionKeySource;
  /// Set of export policy rules
  final pulumi.Input<CachePropertiesExportPolicy>? exportPolicy;
  /// The file path of the Cache.
  final pulumi.Input<String> filepath;
  /// Flag indicating whether the global file lock is enabled for the cache.
  final pulumi.Input<String>? globalFileLocking;
  /// Describe if a cache is Kerberos enabled.
  final pulumi.Input<String>? kerberos;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  final pulumi.Input<String>? keyVaultPrivateEndpointResourceId;
  /// Specifies whether LDAP is enabled or not for flexcache volume.
  final pulumi.Input<String>? ldap;
  /// Specifies the type of LDAP server for flexcache volume.
  final pulumi.Input<String>? ldapServerType;
  /// Origin cluster information
  final pulumi.Input<OriginClusterInformation> originClusterInformation;
  /// The Azure Resource URI for a delegated subnet that will be used for ANF Intercluster Interface IP addresses.
  final pulumi.Input<String> peeringSubnetResourceId;
  /// Set of supported protocol types, which include NFSv3, NFSv4 and SMB protocol
  final pulumi.Input<List<String>>? protocolTypes;
  /// Maximum storage quota allowed for a file system in bytes. Valid values are in the range 50GiB to 1PiB. Values expressed in bytes as multiples of 1GiB.
  final pulumi.Input<double> size;
  /// SMB information for the cache
  final pulumi.Input<SmbSettings>? smbSettings;
  /// Maximum throughput in MiB/s that can be achieved by this cache volume and this will be accepted as input only for manual qosType cache
  final pulumi.Input<double>? throughputMibps;
  /// Flag indicating whether writeback is enabled for the cache.
  final pulumi.Input<String>? writeBack;

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
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<CachePropertiesExportPolicy, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'filepath': filepath,
      'globalFileLocking': ?globalFileLocking,
      'kerberos': ?kerberos,
      'keyVaultPrivateEndpointResourceId': ?keyVaultPrivateEndpointResourceId,
      'ldap': ?ldap,
      'ldapServerType': ?ldapServerType,
      'originClusterInformation': pulumi.Input.mapInputValue<OriginClusterInformation, Map<String, dynamic>>(originClusterInformation, (value) => value.toMap()),
      'peeringSubnetResourceId': peeringSubnetResourceId,
      'protocolTypes': ?protocolTypes,
      'size': size,
      'smbSettings': ?pulumi.Input.mapOptionalInputValue<SmbSettings, Map<String, dynamic>>(smbSettings, (value) => value.toMap()),
      'throughputMibps': ?throughputMibps,
      'writeBack': ?writeBack,
    };
  }

  factory CacheProperties.fromMap(Map<String, dynamic> map) {
    return CacheProperties(
      cacheSubnetResourceId: (map['cacheSubnetResourceId'] as String).input(),
      cifsChangeNotifications: map['cifsChangeNotifications'] == null ? null : (map['cifsChangeNotifications'] as String).input(),
      encryptionKeySource: (map['encryptionKeySource'] as String).input(),
      exportPolicy: map['exportPolicy'] == null ? null : (CachePropertiesExportPolicy.fromMap((map['exportPolicy'] as Map).cast<String, dynamic>())).input(),
      filepath: (map['filepath'] as String).input(),
      globalFileLocking: map['globalFileLocking'] == null ? null : (map['globalFileLocking'] as String).input(),
      kerberos: map['kerberos'] == null ? null : (map['kerberos'] as String).input(),
      keyVaultPrivateEndpointResourceId: map['keyVaultPrivateEndpointResourceId'] == null ? null : (map['keyVaultPrivateEndpointResourceId'] as String).input(),
      ldap: map['ldap'] == null ? null : (map['ldap'] as String).input(),
      ldapServerType: map['ldapServerType'] == null ? null : (map['ldapServerType'] as String).input(),
      originClusterInformation: (OriginClusterInformation.fromMap((map['originClusterInformation'] as Map).cast<String, dynamic>())).input(),
      peeringSubnetResourceId: (map['peeringSubnetResourceId'] as String).input(),
      protocolTypes: map['protocolTypes'] == null ? null : ((map['protocolTypes'] as List).cast<String>()).input(),
      size: (map['size'] as double).input(),
      smbSettings: map['smbSettings'] == null ? null : (SmbSettings.fromMap((map['smbSettings'] as Map).cast<String, dynamic>())).input(),
      throughputMibps: map['throughputMibps'] == null ? null : (map['throughputMibps'] as double).input(),
      writeBack: map['writeBack'] == null ? null : (map['writeBack'] as String).input(),
    );
  }
}

