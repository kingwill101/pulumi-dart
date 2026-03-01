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
    pulumi.Output<String>? configStoreName,
    pulumi.Output<CreateMode>? createMode,
    pulumi.Output<DataPlaneProxyProperties>? dataPlaneProxy,
    pulumi.Output<bool>? disableLocalAuth,
    pulumi.Output<bool>? enablePurgeProtection,
    pulumi.Output<EncryptionProperties>? encryption,
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<Sku> sku,
    pulumi.Output<int>? softDeleteRetentionInDays,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      configStoreName = pulumi.Input.asOptionalInput<String>(configStoreName),
      createMode = pulumi.Input.asOptionalInput<CreateMode>(createMode),
      dataPlaneProxy = pulumi.Input.asOptionalInput<DataPlaneProxyProperties>(dataPlaneProxy),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      enablePurgeProtection = pulumi.Input.asOptionalInput<bool>(enablePurgeProtection),
      encryption = pulumi.Input.asOptionalInput<EncryptionProperties>(encryption),
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      softDeleteRetentionInDays = pulumi.Input.asOptionalInput<int>(softDeleteRetentionInDays),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      configStoreName: map['configStoreName'] == null ? null : pulumi.Output.create<String>(map['configStoreName'] as String),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<CreateMode>(CreateMode.fromValue(map['createMode'] as String)),
      dataPlaneProxy: map['dataPlaneProxy'] == null ? null : pulumi.Output.create<DataPlaneProxyProperties>(DataPlaneProxyProperties.fromMap((map['dataPlaneProxy'] as Map).cast<String, dynamic>())),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : pulumi.Output.create<bool>(map['disableLocalAuth'] as bool),
      enablePurgeProtection: map['enablePurgeProtection'] == null ? null : pulumi.Output.create<bool>(map['enablePurgeProtection'] as bool),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<EncryptionProperties>(EncryptionProperties.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      softDeleteRetentionInDays: map['softDeleteRetentionInDays'] == null ? null : pulumi.Output.create<int>(map['softDeleteRetentionInDays'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

