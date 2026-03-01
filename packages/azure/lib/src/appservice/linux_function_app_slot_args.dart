// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_auth_settings.dart';
import 'linux_function_app_slot_auth_settings_v2.dart';
import 'linux_function_app_slot_backup.dart';
import 'linux_function_app_slot_connection_string.dart';
import 'linux_function_app_slot_identity.dart';
import 'linux_function_app_slot_site_config.dart';
import 'linux_function_app_slot_storage_account.dart';

/// {@template pulumi_appservice_linux_function_app_slot_linux_function_app_slot_args_doc}
/// The set of arguments for LinuxFunctionAppSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_linux_function_app_slot_linux_function_app_slot_args_doc}
class LinuxFunctionAppSlotArgs {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// an `auth_settings` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotAuthSettings>? authSettings;
  /// an `auth_settings_v2` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotAuthSettingsV2>? authSettingsV2;
  /// a `backup` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotBackup>? backup;
  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  final pulumi.Input<bool>? builtinLoggingEnabled;
  /// Should the Function App Slot use Client Certificates.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  final pulumi.Input<String>? clientCertificateMode;
  /// a `connection_string` block as detailed below.
  final pulumi.Input<List<LinuxFunctionAppSlotConnectionString>>? connectionStrings;
  /// Force disable the content share settings.
  final pulumi.Input<bool>? contentShareForceDisabled;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// Is the Linux Function App Slot enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created.
  final pulumi.Input<String> functionAppId;
  /// The runtime version associated with the Function App Slot. Defaults to `~4`.
  final pulumi.Input<String>? functionsExtensionVersion;
  /// Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// Specifies the name of the Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  final pulumi.Input<String>? servicePlanId;
  /// a `site_config` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotSiteConfig> siteConfig;
  /// The access key which will be used to access the storage account for the Function App Slot.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App Slot.
  final pulumi.Input<String>? storageAccountName;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<LinuxFunctionAppSlotStorageAccount>>? storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// > **Note:** `storage_key_vault_secret_id` cannot be used with `storage_account_name`.
  ///
  /// > **Note:** `storage_key_vault_secret_id` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  final pulumi.Input<String>? storageKeyVaultSecretId;
  /// Should the Function App Slot use its Managed Identity to access storage.
  ///
  /// > **Note:** One of `storage_account_access_key` or `storage_uses_managed_identity` must be specified when using `storage_account_name`.
  final pulumi.Input<bool>? storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Linux Function App.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app slot configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  ///
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for an app running in the App Service Environment.
  final pulumi.Input<bool>? vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [LinuxFunctionAppSlotArgs].
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] an `auth_settings` block as detailed below.
  /// [authSettingsV2] an `auth_settings_v2` block as detailed below.
  /// [backup] a `backup` block as detailed below.
  /// [builtinLoggingEnabled] Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  /// [clientCertificateEnabled] Should the Function App Slot use Client Certificates.
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  /// [connectionStrings] a `connection_string` block as detailed below.
  /// [contentShareForceDisabled] Force disable the content share settings.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  /// [enabled] Is the Linux Function App Slot enabled. Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Are the default FTP Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [functionAppId] The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created.
  /// [functionsExtensionVersion] The runtime version associated with the Function App Slot. Defaults to `~4`.
  /// [httpsOnly] Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  /// [identity] An `identity` block as detailed below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [name] Specifies the name of the Function App Slot. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  /// [siteConfig] a `site_config` block as detailed below.
  /// [storageAccountAccessKey] The access key which will be used to access the storage account for the Function App Slot.
  /// [storageAccountName] The backend storage account name which will be used by this Function App Slot.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  /// [storageUsesManagedIdentity] Should the Function App Slot use its Managed Identity to access storage.
  /// [tags] A mapping of tags which should be assigned to the Linux Function App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  LinuxFunctionAppSlotArgs({
    Map<String, String>? appSettings,
    LinuxFunctionAppSlotAuthSettings? authSettings,
    LinuxFunctionAppSlotAuthSettingsV2? authSettingsV2,
    LinuxFunctionAppSlotBackup? backup,
    bool? builtinLoggingEnabled,
    bool? clientCertificateEnabled,
    String? clientCertificateExclusionPaths,
    String? clientCertificateMode,
    List<LinuxFunctionAppSlotConnectionString>? connectionStrings,
    bool? contentShareForceDisabled,
    int? dailyMemoryTimeQuota,
    bool? enabled,
    bool? ftpPublishBasicAuthenticationEnabled,
    required String functionAppId,
    String? functionsExtensionVersion,
    bool? httpsOnly,
    LinuxFunctionAppSlotIdentity? identity,
    String? keyVaultReferenceIdentityId,
    String? name,
    bool? publicNetworkAccessEnabled,
    String? servicePlanId,
    required LinuxFunctionAppSlotSiteConfig siteConfig,
    String? storageAccountAccessKey,
    String? storageAccountName,
    List<LinuxFunctionAppSlotStorageAccount>? storageAccounts,
    String? storageKeyVaultSecretId,
    bool? storageUsesManagedIdentity,
    Map<String, String>? tags,
    bool? virtualNetworkBackupRestoreEnabled,
    String? virtualNetworkSubnetId,
    bool? vnetImagePullEnabled,
    bool? webdeployPublishBasicAuthenticationEnabled,
  }) :
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotAuthSettingsV2>(authSettingsV2),
      backup = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotBackup>(backup),
      builtinLoggingEnabled = pulumi.Input.asOptionalInput<bool>(builtinLoggingEnabled),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<LinuxFunctionAppSlotConnectionString>>(connectionStrings),
      contentShareForceDisabled = pulumi.Input.asOptionalInput<bool>(contentShareForceDisabled),
      dailyMemoryTimeQuota = pulumi.Input.asOptionalInput<int>(dailyMemoryTimeQuota),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      functionAppId = pulumi.Input.asInput<String>(functionAppId),
      functionsExtensionVersion = pulumi.Input.asOptionalInput<String>(functionsExtensionVersion),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asInput<LinuxFunctionAppSlotSiteConfig>(siteConfig),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageAccounts = pulumi.Input.asOptionalInput<List<LinuxFunctionAppSlotStorageAccount>>(storageAccounts),
      storageKeyVaultSecretId = pulumi.Input.asOptionalInput<String>(storageKeyVaultSecretId),
      storageUsesManagedIdentity = pulumi.Input.asOptionalInput<bool>(storageUsesManagedIdentity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkBackupRestoreEnabled = pulumi.Input.asOptionalInput<bool>(virtualNetworkBackupRestoreEnabled),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      vnetImagePullEnabled = pulumi.Input.asOptionalInput<bool>(vnetImagePullEnabled),
      webdeployPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(webdeployPublishBasicAuthenticationEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'builtinLoggingEnabled': ?builtinLoggingEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<LinuxFunctionAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentShareForceDisabled': ?contentShareForceDisabled,
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'functionAppId': functionAppId,
      'functionsExtensionVersion': ?functionsExtensionVersion,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig': pulumi.Input.mapInputValue<LinuxFunctionAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<LinuxFunctionAppSlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageKeyVaultSecretId': ?storageKeyVaultSecretId,
      'storageUsesManagedIdentity': ?storageUsesManagedIdentity,
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory LinuxFunctionAppSlotArgs.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotArgs(
      appSettings: map['appSettings'] == null ? null : (map['appSettings'] as Map).cast<String, String>(),
      authSettings: map['authSettings'] == null ? null : LinuxFunctionAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>()),
      authSettingsV2: map['authSettingsV2'] == null ? null : LinuxFunctionAppSlotAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>()),
      backup: map['backup'] == null ? null : LinuxFunctionAppSlotBackup.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      builtinLoggingEnabled: map['builtinLoggingEnabled'] == null ? null : map['builtinLoggingEnabled'] as bool,
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : map['clientCertificateEnabled'] as bool,
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : map['clientCertificateExclusionPaths'] as String,
      clientCertificateMode: map['clientCertificateMode'] == null ? null : map['clientCertificateMode'] as String,
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Input.decodeList<LinuxFunctionAppSlotConnectionString>(map['connectionStrings'], (value) => LinuxFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      contentShareForceDisabled: map['contentShareForceDisabled'] == null ? null : map['contentShareForceDisabled'] as bool,
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : map['dailyMemoryTimeQuota'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : map['ftpPublishBasicAuthenticationEnabled'] as bool,
      functionAppId: map['functionAppId'] as String,
      functionsExtensionVersion: map['functionsExtensionVersion'] == null ? null : map['functionsExtensionVersion'] as String,
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly'] as bool,
      identity: map['identity'] == null ? null : LinuxFunctionAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : map['keyVaultReferenceIdentityId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : map['publicNetworkAccessEnabled'] as bool,
      servicePlanId: map['servicePlanId'] == null ? null : map['servicePlanId'] as String,
      siteConfig: LinuxFunctionAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>()),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : map['storageAccountAccessKey'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Input.decodeList<LinuxFunctionAppSlotStorageAccount>(map['storageAccounts'], (value) => LinuxFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>())),
      storageKeyVaultSecretId: map['storageKeyVaultSecretId'] == null ? null : map['storageKeyVaultSecretId'] as String,
      storageUsesManagedIdentity: map['storageUsesManagedIdentity'] == null ? null : map['storageUsesManagedIdentity'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : map['virtualNetworkBackupRestoreEnabled'] as bool,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : map['virtualNetworkSubnetId'] as String,
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : map['vnetImagePullEnabled'] as bool,
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : map['webdeployPublishBasicAuthenticationEnabled'] as bool,
    );
  }
}

