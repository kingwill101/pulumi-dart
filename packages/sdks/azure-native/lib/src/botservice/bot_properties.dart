// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Bot.
class BotProperties {
  /// Contains resource all settings defined as key/value pairs.
  final pulumi.Input<Map<String, String>>? allSettings;
  /// The hint (e.g. keyVault secret resourceId) on how to fetch the app secret
  final pulumi.Input<String>? appPasswordHint;
  /// The CMK Url
  final pulumi.Input<String>? cmekKeyVaultUrl;
  /// The description of the bot
  final pulumi.Input<String>? description;
  /// The Application Insights key
  final pulumi.Input<String>? developerAppInsightKey;
  /// The Application Insights Api Key
  final pulumi.Input<String>? developerAppInsightsApiKey;
  /// The Application Insights App Id
  final pulumi.Input<String>? developerAppInsightsApplicationId;
  /// Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  /// The Name of the bot
  final pulumi.Input<String> displayName;
  /// The bot's endpoint
  final pulumi.Input<String> endpoint;
  /// The Icon Url of the bot
  final pulumi.Input<String>? iconUrl;
  /// Whether Cmek is enabled
  final pulumi.Input<bool>? isCmekEnabled;
  /// Whether the bot is streaming supported
  final pulumi.Input<bool>? isStreamingSupported;
  /// Collection of LUIS App Ids
  final pulumi.Input<List<String>>? luisAppIds;
  /// The LUIS Key
  final pulumi.Input<String>? luisKey;
  /// The bot's manifest url
  final pulumi.Input<String>? manifestUrl;
  /// Microsoft App Id for the bot
  final pulumi.Input<String> msaAppId;
  /// Microsoft App Managed Identity Resource Id for the bot
  final pulumi.Input<String>? msaAppMSIResourceId;
  /// Microsoft App Tenant Id for the bot
  final pulumi.Input<String>? msaAppTenantId;
  /// Microsoft App Type for the bot
  final pulumi.Input<String>? msaAppType;
  /// The hint to browser (e.g. protocol handler) on how to open the bot for authoring
  final pulumi.Input<String>? openWithHint;
  /// Contains resource parameters defined as key/value pairs.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Whether the bot is in an isolated network
  final pulumi.Input<String>? publicNetworkAccess;
  /// Publishing credentials of the resource
  final pulumi.Input<String>? publishingCredentials;
  /// The channel schema transformation version for the bot
  final pulumi.Input<String>? schemaTransformationVersion;
  /// The storage resourceId for the bot
  final pulumi.Input<String>? storageResourceId;
  /// The Tenant Id for the bot
  final pulumi.Input<String>? tenantId;

  /// Creates a new [BotProperties].
  /// [allSettings] Contains resource all settings defined as key/value pairs.
  /// [appPasswordHint] The hint (e.g. keyVault secret resourceId) on how to fetch the app secret
  /// [cmekKeyVaultUrl] The CMK Url
  /// [description] The description of the bot
  /// [developerAppInsightKey] The Application Insights key
  /// [developerAppInsightsApiKey] The Application Insights Api Key
  /// [developerAppInsightsApplicationId] The Application Insights App Id
  /// [disableLocalAuth] Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  /// [displayName] The Name of the bot
  /// [endpoint] The bot's endpoint
  /// [iconUrl] The Icon Url of the bot
  /// [isCmekEnabled] Whether Cmek is enabled
  /// [isStreamingSupported] Whether the bot is streaming supported
  /// [luisAppIds] Collection of LUIS App Ids
  /// [luisKey] The LUIS Key
  /// [manifestUrl] The bot's manifest url
  /// [msaAppId] Microsoft App Id for the bot
  /// [msaAppMSIResourceId] Microsoft App Managed Identity Resource Id for the bot
  /// [msaAppTenantId] Microsoft App Tenant Id for the bot
  /// [msaAppType] Microsoft App Type for the bot
  /// [openWithHint] The hint to browser (e.g. protocol handler) on how to open the bot for authoring
  /// [parameters] Contains resource parameters defined as key/value pairs.
  /// [publicNetworkAccess] Whether the bot is in an isolated network
  /// [publishingCredentials] Publishing credentials of the resource
  /// [schemaTransformationVersion] The channel schema transformation version for the bot
  /// [storageResourceId] The storage resourceId for the bot
  /// [tenantId] The Tenant Id for the bot
  const BotProperties({
    this.allSettings,
    this.appPasswordHint,
    this.cmekKeyVaultUrl,
    this.description,
    this.developerAppInsightKey,
    this.developerAppInsightsApiKey,
    this.developerAppInsightsApplicationId,
    this.disableLocalAuth,
    required this.displayName,
    required this.endpoint,
    this.iconUrl,
    this.isCmekEnabled,
    this.isStreamingSupported,
    this.luisAppIds,
    this.luisKey,
    this.manifestUrl,
    required this.msaAppId,
    this.msaAppMSIResourceId,
    this.msaAppTenantId,
    this.msaAppType,
    this.openWithHint,
    this.parameters,
    this.publicNetworkAccess,
    this.publishingCredentials,
    this.schemaTransformationVersion,
    this.storageResourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allSettings': ?allSettings,
      'appPasswordHint': ?appPasswordHint,
      'cmekKeyVaultUrl': ?cmekKeyVaultUrl,
      'description': ?description,
      'developerAppInsightKey': ?developerAppInsightKey,
      'developerAppInsightsApiKey': ?developerAppInsightsApiKey,
      'developerAppInsightsApplicationId': ?developerAppInsightsApplicationId,
      'disableLocalAuth': ?disableLocalAuth,
      'displayName': displayName,
      'endpoint': endpoint,
      'iconUrl': ?iconUrl,
      'isCmekEnabled': ?isCmekEnabled,
      'isStreamingSupported': ?isStreamingSupported,
      'luisAppIds': ?luisAppIds,
      'luisKey': ?luisKey,
      'manifestUrl': ?manifestUrl,
      'msaAppId': msaAppId,
      'msaAppMSIResourceId': ?msaAppMSIResourceId,
      'msaAppTenantId': ?msaAppTenantId,
      'msaAppType': ?msaAppType,
      'openWithHint': ?openWithHint,
      'parameters': ?parameters,
      'publicNetworkAccess': ?publicNetworkAccess,
      'publishingCredentials': ?publishingCredentials,
      'schemaTransformationVersion': ?schemaTransformationVersion,
      'storageResourceId': ?storageResourceId,
      'tenantId': ?tenantId,
    };
  }

  factory BotProperties.fromMap(Map<String, dynamic> map) {
    return BotProperties(
      allSettings: (() { final guardedValue = map['allSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      appPasswordHint: (() { final guardedValue = map['appPasswordHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cmekKeyVaultUrl: (() { final guardedValue = map['cmekKeyVaultUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightKey: (() { final guardedValue = map['developerAppInsightKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightsApiKey: (() { final guardedValue = map['developerAppInsightsApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developerAppInsightsApplicationId: (() { final guardedValue = map['developerAppInsightsApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      iconUrl: (() { final guardedValue = map['iconUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCmekEnabled: (() { final guardedValue = map['isCmekEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isStreamingSupported: (() { final guardedValue = map['isStreamingSupported']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      luisAppIds: (() { final guardedValue = map['luisAppIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      luisKey: (() { final guardedValue = map['luisKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestUrl: (() { final guardedValue = map['manifestUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msaAppId: pulumi.Input.fromValue(map['msaAppId'] as String),
      msaAppMSIResourceId: (() { final guardedValue = map['msaAppMSIResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msaAppTenantId: (() { final guardedValue = map['msaAppTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msaAppType: (() { final guardedValue = map['msaAppType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openWithHint: (() { final guardedValue = map['openWithHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishingCredentials: (() { final guardedValue = map['publishingCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaTransformationVersion: (() { final guardedValue = map['schemaTransformationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageResourceId: (() { final guardedValue = map['storageResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

