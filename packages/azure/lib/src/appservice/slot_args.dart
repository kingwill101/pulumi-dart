// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_auth_settings.dart';
import 'slot_connection_string.dart';
import 'slot_identity.dart';
import 'slot_logs.dart';
import 'slot_site_config.dart';
import 'slot_storage_account.dart';

/// {@template pulumi_appservice_slot_slot_args_doc}
/// The set of arguments for Slot.
/// {@endtemplate}
/// {@macro pulumi_appservice_slot_slot_args_doc}
class SlotArgs {
  /// The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceName;
  /// The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServicePlanId;
  /// A key-value pair of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// A `auth_settings` block as defined below.
  final pulumi.Input<SlotAuthSettings>? authSettings;
  /// Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance?
  final pulumi.Input<bool>? clientAffinityEnabled;
  /// An `connection_string` block as defined below.
  final pulumi.Input<List<SlotConnectionString>>? connectionStrings;
  /// Is the App Service Slot Enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Can the App Service Slot only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<SlotIdentity>? identity;
  /// The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `logs` block as defined below.
  final pulumi.Input<SlotLogs>? logs;
  /// Specifies the name of the App Service Slot component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `site_config` object as defined below.
  final pulumi.Input<SlotSiteConfig>? siteConfig;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<SlotStorageAccount>>? storageAccounts;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SlotArgs].
  /// [appServiceName] The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created.
  /// [appServicePlanId] The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created.
  /// [appSettings] A key-value pair of App Settings.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [clientAffinityEnabled] Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance?
  /// [connectionStrings] An `connection_string` block as defined below.
  /// [enabled] Is the App Service Slot Enabled? Defaults to `true`.
  /// [httpsOnly] Can the App Service Slot only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logs] A `logs` block as defined below.
  /// [name] Specifies the name of the App Service Slot component. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created.
  /// [siteConfig] A `site_config` object as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  SlotArgs({
    required String appServiceName,
    required String appServicePlanId,
    Map<String, String>? appSettings,
    SlotAuthSettings? authSettings,
    bool? clientAffinityEnabled,
    List<SlotConnectionString>? connectionStrings,
    bool? enabled,
    bool? httpsOnly,
    SlotIdentity? identity,
    String? keyVaultReferenceIdentityId,
    String? location,
    SlotLogs? logs,
    String? name,
    required String resourceGroupName,
    SlotSiteConfig? siteConfig,
    List<SlotStorageAccount>? storageAccounts,
    Map<String, String>? tags,
  }) :
      appServiceName = pulumi.Input.asInput<String>(appServiceName),
      appServicePlanId = pulumi.Input.asInput<String>(appServicePlanId),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<SlotAuthSettings>(authSettings),
      clientAffinityEnabled = pulumi.Input.asOptionalInput<bool>(clientAffinityEnabled),
      connectionStrings = pulumi.Input.asOptionalInput<List<SlotConnectionString>>(connectionStrings),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<SlotIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      location = pulumi.Input.asOptionalInput<String>(location),
      logs = pulumi.Input.asOptionalInput<SlotLogs>(logs),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteConfig = pulumi.Input.asOptionalInput<SlotSiteConfig>(siteConfig),
      storageAccounts = pulumi.Input.asOptionalInput<List<SlotStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': appServiceName,
      'appServicePlanId': appServicePlanId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<SlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<SlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<SlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<SlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<SlotLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<SlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<SlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<SlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory SlotArgs.fromMap(Map<String, dynamic> map) {
    return SlotArgs(
      appServiceName: map['appServiceName'] as String,
      appServicePlanId: map['appServicePlanId'] as String,
      appSettings: map['appSettings'] == null ? null : (map['appSettings'] as Map).cast<String, String>(),
      authSettings: map['authSettings'] == null ? null : SlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>()),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : map['clientAffinityEnabled'] as bool,
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Input.decodeList<SlotConnectionString>(map['connectionStrings'], (value) => SlotConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      identity: map['identity'] == null ? null : SlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : map['keyVaultReferenceIdentityId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      logs: map['logs'] == null ? null : SlotLogs.fromMap((map['logs'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteConfig: map['siteConfig'] == null ? null : SlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>()),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Input.decodeList<SlotStorageAccount>(map['storageAccounts'], (value) => SlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

