// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'abuse_penalty_response.dart';
import 'api_properties_response.dart';
import 'call_rate_limit_response.dart';
import 'commitment_plan_association_response.dart';
import 'encryption_response.dart';
import 'multi_region_settings_response.dart';
import 'network_injection_response.dart';
import 'network_rule_set_response.dart';
import 'private_endpoint_connection_response.dart';
import 'quota_limit_response.dart';
import 'rai_monitor_config_response.dart';
import 'sku_capability_response.dart';
import 'sku_change_info_response.dart';
import 'user_owned_aml_workspace_response.dart';
import 'user_owned_storage_response.dart';

/// Properties of Cognitive Services account.
class AccountPropertiesResponse {
  /// The abuse penalty.
  final pulumi.Input<AbusePenaltyResponse> abusePenalty;
  /// Specifies whether this resource support project management as child resources, used as containers for access management, data isolation and cost in AI Foundry.
  final pulumi.Input<bool?>? allowProjectManagement;
  final pulumi.Input<List<String>?>? allowedFqdnList;
  /// The user owned AML account properties.
  final pulumi.Input<UserOwnedAmlWorkspaceResponse?>? amlWorkspace;
  /// The api properties for special APIs.
  final pulumi.Input<ApiPropertiesResponse?>? apiProperties;
  /// Specifies the projects, by project name, that are associated with this resource.
  final pulumi.Input<List<String>?>? associatedProjects;
  /// The call rate limit Cognitive Services account.
  final pulumi.Input<CallRateLimitResponse> callRateLimit;
  /// Gets the capabilities of the cognitive services account. Each item indicates the capability of a specific feature. The values are read-only and for reference only.
  final pulumi.Input<List<SkuCapabilityResponse>> capabilities;
  /// The commitment plan associations of Cognitive Services account.
  final pulumi.Input<List<CommitmentPlanAssociationResponse>> commitmentPlanAssociations;
  /// Optional subdomain name used for token-based authentication.
  final pulumi.Input<String?>? customSubDomainName;
  /// Gets the date of cognitive services account creation.
  final pulumi.Input<String> dateCreated;
  /// Specifies the project, by project name, that is targeted when data plane endpoints are called without a project parameter.
  final pulumi.Input<String?>? defaultProject;
  /// The deletion date, only available for deleted account.
  final pulumi.Input<String> deletionDate;
  final pulumi.Input<bool?>? disableLocalAuth;
  /// The flag to enable dynamic throttling.
  final pulumi.Input<bool?>? dynamicThrottlingEnabled;
  /// The encryption properties for this resource.
  final pulumi.Input<EncryptionResponse?>? encryption;
  /// Endpoint of the created account.
  final pulumi.Input<String> endpoint;
  final pulumi.Input<Map<String, String>> endpoints;
  /// The internal identifier (deprecated, do not use this property).
  final pulumi.Input<String> internalId;
  /// If the resource is migrated from an existing key.
  final pulumi.Input<bool> isMigrated;
  /// The multiregion settings of Cognitive Services account.
  final pulumi.Input<MultiRegionSettingsResponse?>? locations;
  /// Resource migration token.
  final pulumi.Input<String?>? migrationToken;
  /// A collection of rules governing the accessibility from specific network locations.
  final pulumi.Input<NetworkRuleSetResponse?>? networkAcls;
  final pulumi.Input<List<NetworkInjectionResponse>?>? networkInjections;
  /// The private endpoint connection associated with the Cognitive Services account.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Gets the status of the cognitive services account at the time the operation was called.
  final pulumi.Input<String> provisioningState;
  /// Whether or not public endpoint access is allowed for this account.
  final pulumi.Input<String?>? publicNetworkAccess;
  final pulumi.Input<QuotaLimitResponse> quotaLimit;
  /// Cognitive Services Rai Monitor Config.
  final pulumi.Input<RaiMonitorConfigResponse?>? raiMonitorConfig;
  final pulumi.Input<bool?>? restrictOutboundNetworkAccess;
  /// The scheduled purge date, only available for deleted account.
  final pulumi.Input<String> scheduledPurgeDate;
  /// Sku change info of account.
  final pulumi.Input<SkuChangeInfoResponse> skuChangeInfo;
  /// The storage accounts for this resource.
  final pulumi.Input<List<UserOwnedStorageResponse>?>? userOwnedStorage;

  /// Creates a new [AccountPropertiesResponse].
  /// [abusePenalty] The abuse penalty.
  /// [allowProjectManagement] Specifies whether this resource support project management as child resources, used as containers for access management, data isolation and cost in AI Foundry.
  /// [allowedFqdnList] Optional.
  /// [amlWorkspace] The user owned AML account properties.
  /// [apiProperties] The api properties for special APIs.
  /// [associatedProjects] Specifies the projects, by project name, that are associated with this resource.
  /// [callRateLimit] The call rate limit Cognitive Services account.
  /// [capabilities] Gets the capabilities of the cognitive services account. Each item indicates the capability of a specific feature. The values are read-only and for reference only.
  /// [commitmentPlanAssociations] The commitment plan associations of Cognitive Services account.
  /// [customSubDomainName] Optional subdomain name used for token-based authentication.
  /// [dateCreated] Gets the date of cognitive services account creation.
  /// [defaultProject] Specifies the project, by project name, that is targeted when data plane endpoints are called without a project parameter.
  /// [deletionDate] The deletion date, only available for deleted account.
  /// [disableLocalAuth] Optional.
  /// [dynamicThrottlingEnabled] The flag to enable dynamic throttling.
  /// [encryption] The encryption properties for this resource.
  /// [endpoint] Endpoint of the created account.
  /// [endpoints] Required.
  /// [internalId] The internal identifier (deprecated, do not use this property).
  /// [isMigrated] If the resource is migrated from an existing key.
  /// [locations] The multiregion settings of Cognitive Services account.
  /// [migrationToken] Resource migration token.
  /// [networkAcls] A collection of rules governing the accessibility from specific network locations.
  /// [networkInjections] Optional.
  /// [privateEndpointConnections] The private endpoint connection associated with the Cognitive Services account.
  /// [provisioningState] Gets the status of the cognitive services account at the time the operation was called.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this account.
  /// [quotaLimit] Required.
  /// [raiMonitorConfig] Cognitive Services Rai Monitor Config.
  /// [restrictOutboundNetworkAccess] Optional.
  /// [scheduledPurgeDate] The scheduled purge date, only available for deleted account.
  /// [skuChangeInfo] Sku change info of account.
  /// [userOwnedStorage] The storage accounts for this resource.
  const AccountPropertiesResponse({
    required this.abusePenalty,
    this.allowProjectManagement,
    this.allowedFqdnList,
    this.amlWorkspace,
    this.apiProperties,
    this.associatedProjects,
    required this.callRateLimit,
    required this.capabilities,
    required this.commitmentPlanAssociations,
    this.customSubDomainName,
    required this.dateCreated,
    this.defaultProject,
    required this.deletionDate,
    this.disableLocalAuth,
    this.dynamicThrottlingEnabled,
    this.encryption,
    required this.endpoint,
    required this.endpoints,
    required this.internalId,
    required this.isMigrated,
    this.locations,
    this.migrationToken,
    this.networkAcls,
    this.networkInjections,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.quotaLimit,
    this.raiMonitorConfig,
    this.restrictOutboundNetworkAccess,
    required this.scheduledPurgeDate,
    required this.skuChangeInfo,
    this.userOwnedStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abusePenalty': pulumi.Input.mapInputValue<AbusePenaltyResponse, Map<String, dynamic>>(abusePenalty, (value) => value.toMap()),
      'allowProjectManagement': ?allowProjectManagement,
      'allowedFqdnList': ?allowedFqdnList,
      'amlWorkspace': ?pulumi.Input.mapOptionalInputValue<UserOwnedAmlWorkspaceResponse, Map<String, dynamic>>(amlWorkspace, (value) => value.toMap()),
      'apiProperties': ?pulumi.Input.mapOptionalInputValue<ApiPropertiesResponse, Map<String, dynamic>>(apiProperties, (value) => value.toMap()),
      'associatedProjects': ?associatedProjects,
      'callRateLimit': pulumi.Input.mapInputValue<CallRateLimitResponse, Map<String, dynamic>>(callRateLimit, (value) => value.toMap()),
      'capabilities': pulumi.Input.mapInputValue<List<SkuCapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<SkuCapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commitmentPlanAssociations': pulumi.Input.mapInputValue<List<CommitmentPlanAssociationResponse>, List<Map<String, dynamic>>>(commitmentPlanAssociations, (value) => pulumi.Input.encodeList<CommitmentPlanAssociationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customSubDomainName': ?customSubDomainName,
      'dateCreated': dateCreated,
      'defaultProject': ?defaultProject,
      'deletionDate': deletionDate,
      'disableLocalAuth': ?disableLocalAuth,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'endpoint': endpoint,
      'endpoints': endpoints,
      'internalId': internalId,
      'isMigrated': isMigrated,
      'locations': ?pulumi.Input.mapOptionalInputValue<MultiRegionSettingsResponse, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'migrationToken': ?migrationToken,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSetResponse, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'networkInjections': ?pulumi.Input.mapOptionalInputValue<List<NetworkInjectionResponse>, List<Map<String, dynamic>>>(networkInjections, (value) => pulumi.Input.encodeList<NetworkInjectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'quotaLimit': pulumi.Input.mapInputValue<QuotaLimitResponse, Map<String, dynamic>>(quotaLimit, (value) => value.toMap()),
      'raiMonitorConfig': ?pulumi.Input.mapOptionalInputValue<RaiMonitorConfigResponse, Map<String, dynamic>>(raiMonitorConfig, (value) => value.toMap()),
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'scheduledPurgeDate': scheduledPurgeDate,
      'skuChangeInfo': pulumi.Input.mapInputValue<SkuChangeInfoResponse, Map<String, dynamic>>(skuChangeInfo, (value) => value.toMap()),
      'userOwnedStorage': ?pulumi.Input.mapOptionalInputValue<List<UserOwnedStorageResponse>, List<Map<String, dynamic>>>(userOwnedStorage, (value) => pulumi.Input.encodeList<UserOwnedStorageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesResponse(
      abusePenalty: pulumi.Input.fromValue(AbusePenaltyResponse.fromMap((map['abusePenalty']! as Map).cast<String, dynamic>())),
      allowProjectManagement: (() { final guardedValue = map['allowProjectManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedFqdnList: (() { final guardedValue = map['allowedFqdnList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      amlWorkspace: (() { final guardedValue = map['amlWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserOwnedAmlWorkspaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiProperties: (() { final guardedValue = map['apiProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      associatedProjects: (() { final guardedValue = map['associatedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      callRateLimit: pulumi.Input.fromValue(CallRateLimitResponse.fromMap((map['callRateLimit']! as Map).cast<String, dynamic>())),
      capabilities: pulumi.Input.fromValue(pulumi.Input.decodeList<SkuCapabilityResponse>(map['capabilities']!, (value) => SkuCapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))),
      commitmentPlanAssociations: pulumi.Input.fromValue(pulumi.Input.decodeList<CommitmentPlanAssociationResponse>(map['commitmentPlanAssociations']!, (value) => CommitmentPlanAssociationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      customSubDomainName: (() { final guardedValue = map['customSubDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dateCreated: pulumi.Input.fromValue(map['dateCreated'] as String),
      defaultProject: (() { final guardedValue = map['defaultProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionDate: pulumi.Input.fromValue(map['deletionDate'] as String),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicThrottlingEnabled: (() { final guardedValue = map['dynamicThrottlingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      endpoints: pulumi.Input.fromValue((map['endpoints'] as Map).cast<String, String>()),
      internalId: pulumi.Input.fromValue(map['internalId'] as String),
      isMigrated: pulumi.Input.fromValue(map['isMigrated'] as bool),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      migrationToken: (() { final guardedValue = map['migrationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkInjections: (() { final guardedValue = map['networkInjections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInjectionResponse>(guardedValue, (value) => NetworkInjectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaLimit: pulumi.Input.fromValue(QuotaLimitResponse.fromMap((map['quotaLimit']! as Map).cast<String, dynamic>())),
      raiMonitorConfig: (() { final guardedValue = map['raiMonitorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RaiMonitorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restrictOutboundNetworkAccess: (() { final guardedValue = map['restrictOutboundNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scheduledPurgeDate: pulumi.Input.fromValue(map['scheduledPurgeDate'] as String),
      skuChangeInfo: pulumi.Input.fromValue(SkuChangeInfoResponse.fromMap((map['skuChangeInfo']! as Map).cast<String, dynamic>())),
      userOwnedStorage: (() { final guardedValue = map['userOwnedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserOwnedStorageResponse>(guardedValue, (value) => UserOwnedStorageResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
