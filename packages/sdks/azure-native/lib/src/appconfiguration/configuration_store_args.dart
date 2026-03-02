// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_mode.dart';
import 'data_plane_proxy_properties.dart';
import 'encryption_properties.dart';
import 'resource_identity.dart';
import 'sku.dart';

/// {@template pulumi_appconfiguration_configuration_store_args_doc}
/// The set of arguments for ConfigurationStore.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_configuration_store_args_doc}
class ConfigurationStoreArgs {
  /// The name of the configuration store.
  final pulumi.Input<String>? configStoreName;
  /// Indicates whether the configuration store need to be recovered.
  final pulumi.Input<CreateMode>? createMode;
  /// Property specifying the configuration of data plane proxy for Azure Resource Manager (ARM).
  final pulumi.Input<DataPlaneProxyProperties>? dataPlaneProxy;
  /// Disables all authentication methods other than AAD authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Property specifying whether protection against purge is enabled for this configuration store.
  final pulumi.Input<bool>? enablePurgeProtection;
  /// The encryption settings of the configuration store.
  final pulumi.Input<EncryptionProperties>? encryption;
  /// The managed identity information, if configured.
  final pulumi.Input<ResourceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The sku of the configuration store.
  final pulumi.Input<Sku> sku;
  /// The amount of time in days that the configuration store will be retained when it is soft deleted.
  final pulumi.Input<int>? softDeleteRetentionInDays;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationStoreArgs].
  /// [configStoreName] The name of the configuration store.
  /// [createMode] Indicates whether the configuration store need to be recovered.
  /// [dataPlaneProxy] Property specifying the configuration of data plane proxy for Azure Resource Manager (ARM).
  /// [disableLocalAuth] Disables all authentication methods other than AAD authentication.
  /// [enablePurgeProtection] Property specifying whether protection against purge is enabled for this configuration store.
  /// [encryption] The encryption settings of the configuration store.
  /// [identity] The managed identity information, if configured.
  /// [location] The geo-location where the resource lives
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [sku] The sku of the configuration store.
  /// [softDeleteRetentionInDays] The amount of time in days that the configuration store will be retained when it is soft deleted.
  /// [tags] Resource tags.
  ConfigurationStoreArgs({
    this.configStoreName,
    this.createMode,
    this.dataPlaneProxy,
    this.disableLocalAuth,
    this.enablePurgeProtection,
    this.encryption,
    this.identity,
    this.location,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.sku,
    this.softDeleteRetentionInDays,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': ?configStoreName,
      'createMode': ?pulumi.Input.mapOptionalInputValue<CreateMode, String>(createMode, (value) => value.value),
      'dataPlaneProxy': ?pulumi.Input.mapOptionalInputValue<DataPlaneProxyProperties, Map<String, dynamic>>(dataPlaneProxy, (value) => value.toMap()),
      'disableLocalAuth': ?disableLocalAuth,
      'enablePurgeProtection': ?enablePurgeProtection,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'softDeleteRetentionInDays': ?softDeleteRetentionInDays,
      'tags': ?tags,
    };
  }

  factory ConfigurationStoreArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreArgs(
      configStoreName: map['configStoreName'] == null ? null : (map['configStoreName']! as String).input(),
      createMode: map['createMode'] == null ? null : (CreateMode.fromValue(map['createMode']! as String)).input(),
      dataPlaneProxy: map['dataPlaneProxy'] == null ? null : (DataPlaneProxyProperties.fromMap((map['dataPlaneProxy']! as Map).cast<String, dynamic>())).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      enablePurgeProtection: map['enablePurgeProtection'] == null ? null : (map['enablePurgeProtection']! as bool).input(),
      encryption: map['encryption'] == null ? null : (EncryptionProperties.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ResourceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      softDeleteRetentionInDays: map['softDeleteRetentionInDays'] == null ? null : (map['softDeleteRetentionInDays']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

