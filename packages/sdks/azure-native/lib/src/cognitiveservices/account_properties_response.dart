// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'abuse_penalty_response.dart';
import 'api_properties_response.dart';
import 'call_rate_limit_response.dart';
import 'commitment_plan_association_response.dart';
import 'encryption_response.dart';
import 'multi_region_settings_response.dart';
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
  final pulumi.Input<List<String>>? allowedFqdnList;
  /// The user owned AML workspace properties.
  final pulumi.Input<UserOwnedAmlWorkspaceResponse>? amlWorkspace;
  /// The api properties for special APIs.
  final pulumi.Input<ApiPropertiesResponse>? apiProperties;
  /// The call rate limit Cognitive Services account.
  final pulumi.Input<CallRateLimitResponse> callRateLimit;
  /// Gets the capabilities of the cognitive services account. Each item indicates the capability of a specific feature. The values are read-only and for reference only.
  final pulumi.Input<List<SkuCapabilityResponse>> capabilities;
  /// The commitment plan associations of Cognitive Services account.
  final pulumi.Input<List<CommitmentPlanAssociationResponse>> commitmentPlanAssociations;
  /// Optional subdomain name used for token-based authentication.
  final pulumi.Input<String>? customSubDomainName;
  /// Gets the date of cognitive services account creation.
  final pulumi.Input<String> dateCreated;
  /// The deletion date, only available for deleted account.
  final pulumi.Input<String> deletionDate;
  final pulumi.Input<bool>? disableLocalAuth;
  /// The flag to enable dynamic throttling.
  final pulumi.Input<bool>? dynamicThrottlingEnabled;
  /// The encryption properties for this resource.
  final pulumi.Input<EncryptionResponse>? encryption;
  /// Endpoint of the created account.
  final pulumi.Input<String> endpoint;
  final pulumi.Input<Map<String, String>> endpoints;
  /// The internal identifier (deprecated, do not use this property).
  final pulumi.Input<String> internalId;
  /// If the resource is migrated from an existing key.
  final pulumi.Input<bool> isMigrated;
  /// The multiregion settings of Cognitive Services account.
  final pulumi.Input<MultiRegionSettingsResponse>? locations;
  /// Resource migration token.
  final pulumi.Input<String>? migrationToken;
  /// A collection of rules governing the accessibility from specific network locations.
  final pulumi.Input<NetworkRuleSetResponse>? networkAcls;
  /// The private endpoint connection associated with the Cognitive Services account.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Gets the status of the cognitive services account at the time the operation was called.
  final pulumi.Input<String> provisioningState;
  /// Whether or not public endpoint access is allowed for this account.
  final pulumi.Input<String>? publicNetworkAccess;
  final pulumi.Input<QuotaLimitResponse> quotaLimit;
  /// Cognitive Services Rai Monitor Config.
  final pulumi.Input<RaiMonitorConfigResponse>? raiMonitorConfig;
  final pulumi.Input<bool>? restrictOutboundNetworkAccess;
  /// The scheduled purge date, only available for deleted account.
  final pulumi.Input<String> scheduledPurgeDate;
  /// Sku change info of account.
  final pulumi.Input<SkuChangeInfoResponse> skuChangeInfo;
  /// The storage accounts for this resource.
  final pulumi.Input<List<UserOwnedStorageResponse>>? userOwnedStorage;

  /// Creates a new [AccountPropertiesResponse].
  /// [abusePenalty] The abuse penalty.
  /// [allowedFqdnList] Optional.
  /// [amlWorkspace] The user owned AML workspace properties.
  /// [apiProperties] The api properties for special APIs.
  /// [callRateLimit] The call rate limit Cognitive Services account.
  /// [capabilities] Gets the capabilities of the cognitive services account. Each item indicates the capability of a specific feature. The values are read-only and for reference only.
  /// [commitmentPlanAssociations] The commitment plan associations of Cognitive Services account.
  /// [customSubDomainName] Optional subdomain name used for token-based authentication.
  /// [dateCreated] Gets the date of cognitive services account creation.
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
  /// [privateEndpointConnections] The private endpoint connection associated with the Cognitive Services account.
  /// [provisioningState] Gets the status of the cognitive services account at the time the operation was called.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this account.
  /// [quotaLimit] Required.
  /// [raiMonitorConfig] Cognitive Services Rai Monitor Config.
  /// [restrictOutboundNetworkAccess] Optional.
  /// [scheduledPurgeDate] The scheduled purge date, only available for deleted account.
  /// [skuChangeInfo] Sku change info of account.
  /// [userOwnedStorage] The storage accounts for this resource.
  AccountPropertiesResponse({
    required this.abusePenalty,
    this.allowedFqdnList,
    this.amlWorkspace,
    this.apiProperties,
    required this.callRateLimit,
    required this.capabilities,
    required this.commitmentPlanAssociations,
    this.customSubDomainName,
    required this.dateCreated,
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
      'allowedFqdnList': ?allowedFqdnList,
      'amlWorkspace': ?pulumi.Input.mapOptionalInputValue<UserOwnedAmlWorkspaceResponse, Map<String, dynamic>>(amlWorkspace, (value) => value.toMap()),
      'apiProperties': ?pulumi.Input.mapOptionalInputValue<ApiPropertiesResponse, Map<String, dynamic>>(apiProperties, (value) => value.toMap()),
      'callRateLimit': pulumi.Input.mapInputValue<CallRateLimitResponse, Map<String, dynamic>>(callRateLimit, (value) => value.toMap()),
      'capabilities': pulumi.Input.mapInputValue<List<SkuCapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<SkuCapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commitmentPlanAssociations': pulumi.Input.mapInputValue<List<CommitmentPlanAssociationResponse>, List<Map<String, dynamic>>>(commitmentPlanAssociations, (value) => pulumi.Input.encodeList<CommitmentPlanAssociationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customSubDomainName': ?customSubDomainName,
      'dateCreated': dateCreated,
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
      abusePenalty: (AbusePenaltyResponse.fromMap((map['abusePenalty'] as Map).cast<String, dynamic>())).input(),
      allowedFqdnList: map['allowedFqdnList'] == null ? null : ((map['allowedFqdnList']! as List).cast<String>()).input(),
      amlWorkspace: map['amlWorkspace'] == null ? null : (UserOwnedAmlWorkspaceResponse.fromMap((map['amlWorkspace']! as Map).cast<String, dynamic>())).input(),
      apiProperties: map['apiProperties'] == null ? null : (ApiPropertiesResponse.fromMap((map['apiProperties']! as Map).cast<String, dynamic>())).input(),
      callRateLimit: (CallRateLimitResponse.fromMap((map['callRateLimit'] as Map).cast<String, dynamic>())).input(),
      capabilities: (pulumi.Input.decodeList<SkuCapabilityResponse>(map['capabilities'], (value) => SkuCapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      commitmentPlanAssociations: (pulumi.Input.decodeList<CommitmentPlanAssociationResponse>(map['commitmentPlanAssociations'], (value) => CommitmentPlanAssociationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customSubDomainName: map['customSubDomainName'] == null ? null : (map['customSubDomainName']! as String).input(),
      dateCreated: (map['dateCreated'] as String).input(),
      deletionDate: (map['deletionDate'] as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth']! as bool).input(),
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : (map['dynamicThrottlingEnabled']! as bool).input(),
      encryption: map['encryption'] == null ? null : (EncryptionResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      endpoint: (map['endpoint'] as String).input(),
      endpoints: ((map['endpoints'] as Map).cast<String, String>()).input(),
      internalId: (map['internalId'] as String).input(),
      isMigrated: (map['isMigrated'] as bool).input(),
      locations: map['locations'] == null ? null : (MultiRegionSettingsResponse.fromMap((map['locations']! as Map).cast<String, dynamic>())).input(),
      migrationToken: map['migrationToken'] == null ? null : (map['migrationToken']! as String).input(),
      networkAcls: map['networkAcls'] == null ? null : (NetworkRuleSetResponse.fromMap((map['networkAcls']! as Map).cast<String, dynamic>())).input(),
      privateEndpointConnections: (pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      quotaLimit: (QuotaLimitResponse.fromMap((map['quotaLimit'] as Map).cast<String, dynamic>())).input(),
      raiMonitorConfig: map['raiMonitorConfig'] == null ? null : (RaiMonitorConfigResponse.fromMap((map['raiMonitorConfig']! as Map).cast<String, dynamic>())).input(),
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : (map['restrictOutboundNetworkAccess']! as bool).input(),
      scheduledPurgeDate: (map['scheduledPurgeDate'] as String).input(),
      skuChangeInfo: (SkuChangeInfoResponse.fromMap((map['skuChangeInfo'] as Map).cast<String, dynamic>())).input(),
      userOwnedStorage: map['userOwnedStorage'] == null ? null : (pulumi.Input.decodeList<UserOwnedStorageResponse>(map['userOwnedStorage']!, (value) => UserOwnedStorageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

