// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_store_encryption.dart';
import 'get_configuration_store_identity.dart';
import 'get_configuration_store_primary_read_key.dart';
import 'get_configuration_store_primary_write_key.dart';
import 'get_configuration_store_replica.dart';
import 'get_configuration_store_secondary_read_key.dart';
import 'get_configuration_store_secondary_write_key.dart';

/// Result data returned by getConfigurationStore.
class GetConfigurationStoreResult {
  /// The data plane proxy authentication mode.
  final String dataPlaneProxyAuthenticationMode;
  /// Whether data plane proxy private link delegation is enabled.
  final bool dataPlaneProxyPrivateLinkDelegationEnabled;
  /// An `encryption` block as defined below.
  final List<GetConfigurationStoreEncryption> encryptions;
  /// The URL of the App Configuration Replica.
  final String endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetConfigurationStoreIdentity> identities;
  /// Whether local authentication methods are enabled.
  final bool localAuthEnabled;
  /// The supported Azure location where the App Configuration Replica exists.
  final String location;
  /// The name of the App Configuration Replica.
  final String name;
  /// A `primary_read_key` block as defined below containing the primary read access key.
  final List<GetConfigurationStorePrimaryReadKey> primaryReadKeys;
  /// A `primary_write_key` block as defined below containing the primary write access key.
  final List<GetConfigurationStorePrimaryWriteKey> primaryWriteKeys;
  /// The Public Network Access setting of this App Configuration.
  final String publicNetworkAccess;
  final bool publicNetworkAccessEnabled;
  /// Whether Purge Protection is enabled.
  final bool purgeProtectionEnabled;
  /// One or more `replica` blocks as defined below.
  final List<GetConfigurationStoreReplica> replicas;
  final String resourceGroupName;
  /// A `secondary_read_key` block as defined below containing the secondary read access key.
  final List<GetConfigurationStoreSecondaryReadKey> secondaryReadKeys;
  /// A `secondary_write_key` block as defined below containing the secondary write access key.
  final List<GetConfigurationStoreSecondaryWriteKey> secondaryWriteKeys;
  /// The name of the SKU used for this App Configuration.
  final String sku;
  /// The number of days that items should be retained for once soft-deleted.
  final int softDeleteRetentionDays;
  /// A mapping of tags assigned to the App Configuration.
  final Map<String, String> tags;

  /// Creates a new [GetConfigurationStoreResult].
  /// [dataPlaneProxyAuthenticationMode] The data plane proxy authentication mode.
  /// [dataPlaneProxyPrivateLinkDelegationEnabled] Whether data plane proxy private link delegation is enabled.
  /// [encryptions] An `encryption` block as defined below.
  /// [endpoint] The URL of the App Configuration Replica.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [localAuthEnabled] Whether local authentication methods are enabled.
  /// [location] The supported Azure location where the App Configuration Replica exists.
  /// [name] The name of the App Configuration Replica.
  /// [primaryReadKeys] A `primary_read_key` block as defined below containing the primary read access key.
  /// [primaryWriteKeys] A `primary_write_key` block as defined below containing the primary write access key.
  /// [publicNetworkAccess] The Public Network Access setting of this App Configuration.
  /// [publicNetworkAccessEnabled] Required.
  /// [purgeProtectionEnabled] Whether Purge Protection is enabled.
  /// [replicas] One or more `replica` blocks as defined below.
  /// [resourceGroupName] Required.
  /// [secondaryReadKeys] A `secondary_read_key` block as defined below containing the secondary read access key.
  /// [secondaryWriteKeys] A `secondary_write_key` block as defined below containing the secondary write access key.
  /// [sku] The name of the SKU used for this App Configuration.
  /// [softDeleteRetentionDays] The number of days that items should be retained for once soft-deleted.
  /// [tags] A mapping of tags assigned to the App Configuration.
  GetConfigurationStoreResult({
    required this.dataPlaneProxyAuthenticationMode,
    required this.dataPlaneProxyPrivateLinkDelegationEnabled,
    required this.encryptions,
    required this.endpoint,
    required this.id,
    required this.identities,
    required this.localAuthEnabled,
    required this.location,
    required this.name,
    required this.primaryReadKeys,
    required this.primaryWriteKeys,
    required this.publicNetworkAccess,
    required this.publicNetworkAccessEnabled,
    required this.purgeProtectionEnabled,
    required this.replicas,
    required this.resourceGroupName,
    required this.secondaryReadKeys,
    required this.secondaryWriteKeys,
    required this.sku,
    required this.softDeleteRetentionDays,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneProxyAuthenticationMode': dataPlaneProxyAuthenticationMode,
      'dataPlaneProxyPrivateLinkDelegationEnabled': dataPlaneProxyPrivateLinkDelegationEnabled,
      'encryptions': pulumi.Input.encodeList<GetConfigurationStoreEncryption, Map<String, dynamic>>(encryptions, (value) => value.toMap()),
      'endpoint': endpoint,
      'id': id,
      'identities': pulumi.Input.encodeList<GetConfigurationStoreIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'localAuthEnabled': localAuthEnabled,
      'location': location,
      'name': name,
      'primaryReadKeys': pulumi.Input.encodeList<GetConfigurationStorePrimaryReadKey, Map<String, dynamic>>(primaryReadKeys, (value) => value.toMap()),
      'primaryWriteKeys': pulumi.Input.encodeList<GetConfigurationStorePrimaryWriteKey, Map<String, dynamic>>(primaryWriteKeys, (value) => value.toMap()),
      'publicNetworkAccess': publicNetworkAccess,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'purgeProtectionEnabled': purgeProtectionEnabled,
      'replicas': pulumi.Input.encodeList<GetConfigurationStoreReplica, Map<String, dynamic>>(replicas, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secondaryReadKeys': pulumi.Input.encodeList<GetConfigurationStoreSecondaryReadKey, Map<String, dynamic>>(secondaryReadKeys, (value) => value.toMap()),
      'secondaryWriteKeys': pulumi.Input.encodeList<GetConfigurationStoreSecondaryWriteKey, Map<String, dynamic>>(secondaryWriteKeys, (value) => value.toMap()),
      'sku': sku,
      'softDeleteRetentionDays': softDeleteRetentionDays,
      'tags': tags,
    };
  }

  factory GetConfigurationStoreResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreResult(
      dataPlaneProxyAuthenticationMode: map['dataPlaneProxyAuthenticationMode'] as String,
      dataPlaneProxyPrivateLinkDelegationEnabled: map['dataPlaneProxyPrivateLinkDelegationEnabled'] as bool,
      encryptions: pulumi.Input.decodeList<GetConfigurationStoreEncryption>(map['encryptions'], (value) => GetConfigurationStoreEncryption.fromMap((value as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetConfigurationStoreIdentity>(map['identities'], (value) => GetConfigurationStoreIdentity.fromMap((value as Map).cast<String, dynamic>())),
      localAuthEnabled: map['localAuthEnabled'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      primaryReadKeys: pulumi.Input.decodeList<GetConfigurationStorePrimaryReadKey>(map['primaryReadKeys'], (value) => GetConfigurationStorePrimaryReadKey.fromMap((value as Map).cast<String, dynamic>())),
      primaryWriteKeys: pulumi.Input.decodeList<GetConfigurationStorePrimaryWriteKey>(map['primaryWriteKeys'], (value) => GetConfigurationStorePrimaryWriteKey.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      purgeProtectionEnabled: map['purgeProtectionEnabled'] as bool,
      replicas: pulumi.Input.decodeList<GetConfigurationStoreReplica>(map['replicas'], (value) => GetConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryReadKeys: pulumi.Input.decodeList<GetConfigurationStoreSecondaryReadKey>(map['secondaryReadKeys'], (value) => GetConfigurationStoreSecondaryReadKey.fromMap((value as Map).cast<String, dynamic>())),
      secondaryWriteKeys: pulumi.Input.decodeList<GetConfigurationStoreSecondaryWriteKey>(map['secondaryWriteKeys'], (value) => GetConfigurationStoreSecondaryWriteKey.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] as String,
      softDeleteRetentionDays: map['softDeleteRetentionDays'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

