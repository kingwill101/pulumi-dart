// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the Bot.
class BotProperties {
  /// Contains resource all settings defined as key/value pairs.
  final Map<String, String>? allSettings;
  /// The hint (e.g. keyVault secret resourceId) on how to fetch the app secret
  final String? appPasswordHint;
  /// The CMK Url
  final String? cmekKeyVaultUrl;
  /// The description of the bot
  final String? description;
  /// The Application Insights key
  final String? developerAppInsightKey;
  /// The Application Insights Api Key
  final String? developerAppInsightsApiKey;
  /// The Application Insights App Id
  final String? developerAppInsightsApplicationId;
  /// Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  final bool? disableLocalAuth;
  /// The Name of the bot
  final String displayName;
  /// The bot's endpoint
  final String endpoint;
  /// The Icon Url of the bot
  final String? iconUrl;
  /// Whether Cmek is enabled
  final bool? isCmekEnabled;
  /// Whether the bot is streaming supported
  final bool? isStreamingSupported;
  /// Collection of LUIS App Ids
  final List<String>? luisAppIds;
  /// The LUIS Key
  final String? luisKey;
  /// The bot's manifest url
  final String? manifestUrl;
  /// Microsoft App Id for the bot
  final String msaAppId;
  /// Microsoft App Managed Identity Resource Id for the bot
  final String? msaAppMSIResourceId;
  /// Microsoft App Tenant Id for the bot
  final String? msaAppTenantId;
  /// Microsoft App Type for the bot
  final String? msaAppType;
  /// The hint to browser (e.g. protocol handler) on how to open the bot for authoring
  final String? openWithHint;
  /// Contains resource parameters defined as key/value pairs.
  final Map<String, String>? parameters;
  /// Whether the bot is in an isolated network
  final String? publicNetworkAccess;
  /// Publishing credentials of the resource
  final String? publishingCredentials;
  /// The channel schema transformation version for the bot
  final String? schemaTransformationVersion;
  /// The storage resourceId for the bot
  final String? storageResourceId;
  /// The Tenant Id for the bot
  final String? tenantId;

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
  BotProperties({
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
      allSettings: map['allSettings'] == null ? null : (map['allSettings'] as Map).cast<String, String>(),
      appPasswordHint: map['appPasswordHint'] == null ? null : map['appPasswordHint'] as String,
      cmekKeyVaultUrl: map['cmekKeyVaultUrl'] == null ? null : map['cmekKeyVaultUrl'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      developerAppInsightKey: map['developerAppInsightKey'] == null ? null : map['developerAppInsightKey'] as String,
      developerAppInsightsApiKey: map['developerAppInsightsApiKey'] == null ? null : map['developerAppInsightsApiKey'] as String,
      developerAppInsightsApplicationId: map['developerAppInsightsApplicationId'] == null ? null : map['developerAppInsightsApplicationId'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      displayName: map['displayName'] as String,
      endpoint: map['endpoint'] as String,
      iconUrl: map['iconUrl'] == null ? null : map['iconUrl'] as String,
      isCmekEnabled: map['isCmekEnabled'] == null ? null : map['isCmekEnabled'] as bool,
      isStreamingSupported: map['isStreamingSupported'] == null ? null : map['isStreamingSupported'] as bool,
      luisAppIds: map['luisAppIds'] == null ? null : (map['luisAppIds'] as List).cast<String>(),
      luisKey: map['luisKey'] == null ? null : map['luisKey'] as String,
      manifestUrl: map['manifestUrl'] == null ? null : map['manifestUrl'] as String,
      msaAppId: map['msaAppId'] as String,
      msaAppMSIResourceId: map['msaAppMSIResourceId'] == null ? null : map['msaAppMSIResourceId'] as String,
      msaAppTenantId: map['msaAppTenantId'] == null ? null : map['msaAppTenantId'] as String,
      msaAppType: map['msaAppType'] == null ? null : map['msaAppType'] as String,
      openWithHint: map['openWithHint'] == null ? null : map['openWithHint'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      publishingCredentials: map['publishingCredentials'] == null ? null : map['publishingCredentials'] as String,
      schemaTransformationVersion: map['schemaTransformationVersion'] == null ? null : map['schemaTransformationVersion'] as String,
      storageResourceId: map['storageResourceId'] == null ? null : map['storageResourceId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

