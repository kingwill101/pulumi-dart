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
  final AbusePenaltyResponse abusePenalty;
  final List<String>? allowedFqdnList;
  /// The user owned AML workspace properties.
  final UserOwnedAmlWorkspaceResponse? amlWorkspace;
  /// The api properties for special APIs.
  final ApiPropertiesResponse? apiProperties;
  /// The call rate limit Cognitive Services account.
  final CallRateLimitResponse callRateLimit;
  /// Gets the capabilities of the cognitive services account. Each item indicates the capability of a specific feature. The values are read-only and for reference only.
  final List<SkuCapabilityResponse> capabilities;
  /// The commitment plan associations of Cognitive Services account.
  final List<CommitmentPlanAssociationResponse> commitmentPlanAssociations;
  /// Optional subdomain name used for token-based authentication.
  final String? customSubDomainName;
  /// Gets the date of cognitive services account creation.
  final String dateCreated;
  /// The deletion date, only available for deleted account.
  final String deletionDate;
  final bool? disableLocalAuth;
  /// The flag to enable dynamic throttling.
  final bool? dynamicThrottlingEnabled;
  /// The encryption properties for this resource.
  final EncryptionResponse? encryption;
  /// Endpoint of the created account.
  final String endpoint;
  final Map<String, String> endpoints;
  /// The internal identifier (deprecated, do not use this property).
  final String internalId;
  /// If the resource is migrated from an existing key.
  final bool isMigrated;
  /// The multiregion settings of Cognitive Services account.
  final MultiRegionSettingsResponse? locations;
  /// Resource migration token.
  final String? migrationToken;
  /// A collection of rules governing the accessibility from specific network locations.
  final NetworkRuleSetResponse? networkAcls;
  /// The private endpoint connection associated with the Cognitive Services account.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Gets the status of the cognitive services account at the time the operation was called.
  final String provisioningState;
  /// Whether or not public endpoint access is allowed for this account.
  final String? publicNetworkAccess;
  final QuotaLimitResponse quotaLimit;
  /// Cognitive Services Rai Monitor Config.
  final RaiMonitorConfigResponse? raiMonitorConfig;
  final bool? restrictOutboundNetworkAccess;
  /// The scheduled purge date, only available for deleted account.
  final String scheduledPurgeDate;
  /// Sku change info of account.
  final SkuChangeInfoResponse skuChangeInfo;
  /// The storage accounts for this resource.
  final List<UserOwnedStorageResponse>? userOwnedStorage;

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
      'abusePenalty': abusePenalty.toMap(),
      'allowedFqdnList': ?allowedFqdnList,
      'amlWorkspace': ?amlWorkspace == null ? null : amlWorkspace!.toMap(),
      'apiProperties': ?apiProperties == null ? null : apiProperties!.toMap(),
      'callRateLimit': callRateLimit.toMap(),
      'capabilities': pulumi.Input.encodeList<SkuCapabilityResponse, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'commitmentPlanAssociations': pulumi.Input.encodeList<CommitmentPlanAssociationResponse, Map<String, dynamic>>(commitmentPlanAssociations, (value) => value.toMap()),
      'customSubDomainName': ?customSubDomainName,
      'dateCreated': dateCreated,
      'deletionDate': deletionDate,
      'disableLocalAuth': ?disableLocalAuth,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'endpoint': endpoint,
      'endpoints': endpoints,
      'internalId': internalId,
      'isMigrated': isMigrated,
      'locations': ?locations == null ? null : locations!.toMap(),
      'migrationToken': ?migrationToken,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'quotaLimit': quotaLimit.toMap(),
      'raiMonitorConfig': ?raiMonitorConfig == null ? null : raiMonitorConfig!.toMap(),
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'scheduledPurgeDate': scheduledPurgeDate,
      'skuChangeInfo': skuChangeInfo.toMap(),
      'userOwnedStorage': ?userOwnedStorage == null ? null : pulumi.Input.encodeList<UserOwnedStorageResponse, Map<String, dynamic>>(userOwnedStorage!, (value) => value.toMap()),
    };
  }

  factory AccountPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesResponse(
      abusePenalty: AbusePenaltyResponse.fromMap((map['abusePenalty'] as Map).cast<String, dynamic>()),
      allowedFqdnList: map['allowedFqdnList'] == null ? null : (map['allowedFqdnList'] as List).cast<String>(),
      amlWorkspace: map['amlWorkspace'] == null ? null : UserOwnedAmlWorkspaceResponse.fromMap((map['amlWorkspace'] as Map).cast<String, dynamic>()),
      apiProperties: map['apiProperties'] == null ? null : ApiPropertiesResponse.fromMap((map['apiProperties'] as Map).cast<String, dynamic>()),
      callRateLimit: CallRateLimitResponse.fromMap((map['callRateLimit'] as Map).cast<String, dynamic>()),
      capabilities: pulumi.Input.decodeList<SkuCapabilityResponse>(map['capabilities'], (value) => SkuCapabilityResponse.fromMap((value as Map).cast<String, dynamic>())),
      commitmentPlanAssociations: pulumi.Input.decodeList<CommitmentPlanAssociationResponse>(map['commitmentPlanAssociations'], (value) => CommitmentPlanAssociationResponse.fromMap((value as Map).cast<String, dynamic>())),
      customSubDomainName: map['customSubDomainName'] == null ? null : map['customSubDomainName'] as String,
      dateCreated: map['dateCreated'] as String,
      deletionDate: map['deletionDate'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : map['dynamicThrottlingEnabled'] as bool,
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] as String,
      endpoints: (map['endpoints'] as Map).cast<String, String>(),
      internalId: map['internalId'] as String,
      isMigrated: map['isMigrated'] as bool,
      locations: map['locations'] == null ? null : MultiRegionSettingsResponse.fromMap((map['locations'] as Map).cast<String, dynamic>()),
      migrationToken: map['migrationToken'] == null ? null : map['migrationToken'] as String,
      networkAcls: map['networkAcls'] == null ? null : NetworkRuleSetResponse.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      quotaLimit: QuotaLimitResponse.fromMap((map['quotaLimit'] as Map).cast<String, dynamic>()),
      raiMonitorConfig: map['raiMonitorConfig'] == null ? null : RaiMonitorConfigResponse.fromMap((map['raiMonitorConfig'] as Map).cast<String, dynamic>()),
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : map['restrictOutboundNetworkAccess'] as bool,
      scheduledPurgeDate: map['scheduledPurgeDate'] as String,
      skuChangeInfo: SkuChangeInfoResponse.fromMap((map['skuChangeInfo'] as Map).cast<String, dynamic>()),
      userOwnedStorage: map['userOwnedStorage'] == null ? null : pulumi.Input.decodeList<UserOwnedStorageResponse>(map['userOwnedStorage'], (value) => UserOwnedStorageResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

