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
  const ConfigurationStoreArgs({
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
      'createMode': ?pulumi.Input.mapOptionalInputValue<CreateMode, String>(createMode, (value) => value.wireValue),
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
      configStoreName: (() { final guardedValue = map['configStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreateMode.fromValue(guardedValue as String)); })(),
      dataPlaneProxy: (() { final guardedValue = map['dataPlaneProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataPlaneProxyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePurgeProtection: (() { final guardedValue = map['enablePurgeProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      softDeleteRetentionInDays: (() { final guardedValue = map['softDeleteRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
