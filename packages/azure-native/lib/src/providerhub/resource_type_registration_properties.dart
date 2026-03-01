// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_resource_name.dart';
import 'allowed_unauthorized_actions_extension.dart';
import 'api_profile.dart';
import 'async_timeout_rule.dart';
import 'authorization_action_mapping.dart';
import 'extended_location_options.dart';
import 'linked_access_check.dart';
import 'linked_notification_rule.dart';
import 'linked_operation_rule.dart';
import 'logging_rule.dart';
import 'marketplace_type.dart';
import 'notification.dart';
import 'open_api_configuration.dart';
import 'quota_rule.dart';
import 'resource_concurrency_control_option.dart';
import 'resource_provider_authorization_rules.dart';
import 'resource_type_endpoint.dart';
import 'resource_type_on_behalf_of_token.dart';
import 'resource_type_registration_properties_availability_zone_rule.dart';
import 'resource_type_registration_properties_capacity_rule.dart';
import 'resource_type_registration_properties_check_name_availability_specifications.dart';
import 'resource_type_registration_properties_dsts_configuration.dart';
import 'resource_type_registration_properties_extension_options.dart';
import 'resource_type_registration_properties_features_rule.dart';
import 'resource_type_registration_properties_identity_management.dart';
import 'resource_type_registration_properties_legacy_policy.dart';
import 'resource_type_registration_properties_management.dart';
import 'resource_type_registration_properties_marketplace_options.dart';
import 'resource_type_registration_properties_request_header_options.dart';
import 'resource_type_registration_properties_resource_cache.dart';
import 'resource_type_registration_properties_resource_graph_configuration.dart';
import 'resource_type_registration_properties_resource_management_options.dart';
import 'resource_type_registration_properties_resource_move_policy.dart';
import 'resource_type_registration_properties_resource_query_management.dart';
import 'resource_type_registration_properties_resource_type_common_attribute_management.dart';
import 'resource_type_registration_properties_routing_rule.dart';
import 'resource_type_registration_properties_subscription_lifecycle_notification_specifications.dart';
import 'resource_type_registration_properties_template_deployment_options.dart';
import 'resource_type_registration_properties_template_deployment_policy.dart';
import 'service_tree_info.dart';
import 'subscription_state_rule.dart';
import 'swagger_specification.dart';
import 'throttling_rule.dart';
import 'token_auth_configuration.dart';

class ResourceTypeRegistrationProperties {
  /// Add resource list target locations?
  final bool? addResourceListTargetLocations;
  /// The additional options.
  final String? additionalOptions;
  /// The allow empty role assignments.
  final bool? allowEmptyRoleAssignments;
  /// The allowed resource names.
  final List<AllowedResourceName>? allowedResourceNames;
  /// Allowed template deployment reference actions.
  final List<String>? allowedTemplateDeploymentReferenceActions;
  /// The allowed unauthorized actions.
  final List<String>? allowedUnauthorizedActions;
  /// The allowed unauthorized actions extensions.
  final List<AllowedUnauthorizedActionsExtension>? allowedUnauthorizedActionsExtensions;
  /// The api profiles.
  final List<ApiProfile>? apiProfiles;
  /// The async operation resource type name.
  final String? asyncOperationResourceTypeName;
  /// Async timeout rules
  final List<AsyncTimeoutRule>? asyncTimeoutRules;
  /// The authorization action mappings
  final List<AuthorizationActionMapping>? authorizationActionMappings;
  /// The availability zone rule.
  final ResourceTypeRegistrationPropertiesAvailabilityZoneRule? availabilityZoneRule;
  /// Capacity rule.
  final ResourceTypeRegistrationPropertiesCapacityRule? capacityRule;
  /// The category.
  final String? category;
  /// The check name availability specifications.
  final ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications? checkNameAvailabilitySpecifications;
  /// Common API versions for the resource type.
  final List<String>? commonApiVersions;
  /// The cross tenant token validation.
  final String? crossTenantTokenValidation;
  /// The default api version.
  final String? defaultApiVersion;
  /// The disallowed action verbs.
  final List<String>? disallowedActionVerbs;
  /// The disallowed end user operations.
  final List<String>? disallowedEndUserOperations;
  /// The dsts configuration.
  final ResourceTypeRegistrationPropertiesDstsConfiguration? dstsConfiguration;
  /// Whether async operation is enabled.
  final bool? enableAsyncOperation;
  /// Whether third party S2S is enabled.
  final bool? enableThirdPartyS2S;
  /// The extensions.
  final List<ResourceTypeEndpoint>? endpoints;
  /// The extended locations.
  final List<ExtendedLocationOptions>? extendedLocations;
  /// The extension options.
  final ResourceTypeRegistrationPropertiesExtensionOptions? extensionOptions;
  /// The features rule.
  final ResourceTypeRegistrationPropertiesFeaturesRule? featuresRule;
  /// The frontdoor request mode.
  final String? frontdoorRequestMode;
  /// Grouping tag.
  final String? groupingTag;
  /// The identity management.
  final ResourceTypeRegistrationPropertiesIdentityManagement? identityManagement;
  /// Whether it is pure proxy.
  final bool? isPureProxy;
  /// The legacy name.
  final String? legacyName;
  /// The legacy names.
  final List<String>? legacyNames;
  /// The legacy policy.
  final ResourceTypeRegistrationPropertiesLegacyPolicy? legacyPolicy;
  /// The linked access checks.
  final List<LinkedAccessCheck>? linkedAccessChecks;
  /// The linked notification rules.
  final List<LinkedNotificationRule>? linkedNotificationRules;
  /// The linked operation rules.
  final List<LinkedOperationRule>? linkedOperationRules;
  /// The logging rules.
  final List<LoggingRule>? loggingRules;
  /// The resource provider management.
  final ResourceTypeRegistrationPropertiesManagement? management;
  /// Manifest link.
  final String? manifestLink;
  /// Marketplace options.
  final ResourceTypeRegistrationPropertiesMarketplaceOptions? marketplaceOptions;
  /// The marketplace type.
  final MarketplaceType? marketplaceType;
  /// The metadata.
  final dynamic metadata;
  /// The notifications.
  final List<Notification>? notifications;
  /// The on behalf of tokens.
  final ResourceTypeOnBehalfOfToken? onBehalfOfTokens;
  /// The open api configuration.
  final OpenApiConfiguration? openApiConfiguration;
  /// The policy execution type.
  final String? policyExecutionType;
  /// The quota rule.
  final QuotaRule? quotaRule;
  /// The regionality.
  final String? regionality;
  /// The request header options.
  final ResourceTypeRegistrationPropertiesRequestHeaderOptions? requestHeaderOptions;
  /// The required features.
  final List<String>? requiredFeatures;
  /// Resource cache options.
  final ResourceTypeRegistrationPropertiesResourceCache? resourceCache;
  /// The resource concurrency control options.
  final Map<String, ResourceConcurrencyControlOption>? resourceConcurrencyControlOptions;
  /// The resource deletion policy.
  final String? resourceDeletionPolicy;
  /// The resource graph configuration.
  final ResourceTypeRegistrationPropertiesResourceGraphConfiguration? resourceGraphConfiguration;
  /// Resource management options.
  final ResourceTypeRegistrationPropertiesResourceManagementOptions? resourceManagementOptions;
  /// The resource move policy.
  final ResourceTypeRegistrationPropertiesResourceMovePolicy? resourceMovePolicy;
  /// The resource provider authorization rules.
  final ResourceProviderAuthorizationRules? resourceProviderAuthorizationRules;
  /// Resource query management options.
  final ResourceTypeRegistrationPropertiesResourceQueryManagement? resourceQueryManagement;
  /// The resource sub type.
  final String? resourceSubType;
  /// Resource type common attribute management.
  final ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement? resourceTypeCommonAttributeManagement;
  /// The resource validation.
  final String? resourceValidation;
  /// Routing rule.
  final ResourceTypeRegistrationPropertiesRoutingRule? routingRule;
  /// The resource routing type.
  final String? routingType;
  /// The service tree infos.
  final List<ServiceTreeInfo>? serviceTreeInfos;
  /// The sku link.
  final String? skuLink;
  /// The subscription lifecycle notification specifications.
  final ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications? subscriptionLifecycleNotificationSpecifications;
  /// The subscription state rules.
  final List<SubscriptionStateRule>? subscriptionStateRules;
  /// Whether tags are supported.
  final bool? supportsTags;
  /// The swagger specifications.
  final List<SwaggerSpecification>? swaggerSpecifications;
  /// The template deployment options.
  final ResourceTypeRegistrationPropertiesTemplateDeploymentOptions? templateDeploymentOptions;
  /// The template deployment policy.
  final ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy? templateDeploymentPolicy;
  /// The throttling rules.
  final List<ThrottlingRule>? throttlingRules;
  /// The token auth configuration.
  final TokenAuthConfiguration? tokenAuthConfiguration;

  /// Creates a new [ResourceTypeRegistrationProperties].
  /// [addResourceListTargetLocations] Add resource list target locations?
  /// [additionalOptions] The additional options.
  /// [allowEmptyRoleAssignments] The allow empty role assignments.
  /// [allowedResourceNames] The allowed resource names.
  /// [allowedTemplateDeploymentReferenceActions] Allowed template deployment reference actions.
  /// [allowedUnauthorizedActions] The allowed unauthorized actions.
  /// [allowedUnauthorizedActionsExtensions] The allowed unauthorized actions extensions.
  /// [apiProfiles] The api profiles.
  /// [asyncOperationResourceTypeName] The async operation resource type name.
  /// [asyncTimeoutRules] Async timeout rules
  /// [authorizationActionMappings] The authorization action mappings
  /// [availabilityZoneRule] The availability zone rule.
  /// [capacityRule] Capacity rule.
  /// [category] The category.
  /// [checkNameAvailabilitySpecifications] The check name availability specifications.
  /// [commonApiVersions] Common API versions for the resource type.
  /// [crossTenantTokenValidation] The cross tenant token validation.
  /// [defaultApiVersion] The default api version.
  /// [disallowedActionVerbs] The disallowed action verbs.
  /// [disallowedEndUserOperations] The disallowed end user operations.
  /// [dstsConfiguration] The dsts configuration.
  /// [enableAsyncOperation] Whether async operation is enabled.
  /// [enableThirdPartyS2S] Whether third party S2S is enabled.
  /// [endpoints] The extensions.
  /// [extendedLocations] The extended locations.
  /// [extensionOptions] The extension options.
  /// [featuresRule] The features rule.
  /// [frontdoorRequestMode] The frontdoor request mode.
  /// [groupingTag] Grouping tag.
  /// [identityManagement] The identity management.
  /// [isPureProxy] Whether it is pure proxy.
  /// [legacyName] The legacy name.
  /// [legacyNames] The legacy names.
  /// [legacyPolicy] The legacy policy.
  /// [linkedAccessChecks] The linked access checks.
  /// [linkedNotificationRules] The linked notification rules.
  /// [linkedOperationRules] The linked operation rules.
  /// [loggingRules] The logging rules.
  /// [management] The resource provider management.
  /// [manifestLink] Manifest link.
  /// [marketplaceOptions] Marketplace options.
  /// [marketplaceType] The marketplace type.
  /// [metadata] The metadata.
  /// [notifications] The notifications.
  /// [onBehalfOfTokens] The on behalf of tokens.
  /// [openApiConfiguration] The open api configuration.
  /// [policyExecutionType] The policy execution type.
  /// [quotaRule] The quota rule.
  /// [regionality] The regionality.
  /// [requestHeaderOptions] The request header options.
  /// [requiredFeatures] The required features.
  /// [resourceCache] Resource cache options.
  /// [resourceConcurrencyControlOptions] The resource concurrency control options.
  /// [resourceDeletionPolicy] The resource deletion policy.
  /// [resourceGraphConfiguration] The resource graph configuration.
  /// [resourceManagementOptions] Resource management options.
  /// [resourceMovePolicy] The resource move policy.
  /// [resourceProviderAuthorizationRules] The resource provider authorization rules.
  /// [resourceQueryManagement] Resource query management options.
  /// [resourceSubType] The resource sub type.
  /// [resourceTypeCommonAttributeManagement] Resource type common attribute management.
  /// [resourceValidation] The resource validation.
  /// [routingRule] Routing rule.
  /// [routingType] The resource routing type.
  /// [serviceTreeInfos] The service tree infos.
  /// [skuLink] The sku link.
  /// [subscriptionLifecycleNotificationSpecifications] The subscription lifecycle notification specifications.
  /// [subscriptionStateRules] The subscription state rules.
  /// [supportsTags] Whether tags are supported.
  /// [swaggerSpecifications] The swagger specifications.
  /// [templateDeploymentOptions] The template deployment options.
  /// [templateDeploymentPolicy] The template deployment policy.
  /// [throttlingRules] The throttling rules.
  /// [tokenAuthConfiguration] The token auth configuration.
  ResourceTypeRegistrationProperties({
    this.addResourceListTargetLocations,
    this.additionalOptions,
    this.allowEmptyRoleAssignments,
    this.allowedResourceNames,
    this.allowedTemplateDeploymentReferenceActions,
    this.allowedUnauthorizedActions,
    this.allowedUnauthorizedActionsExtensions,
    this.apiProfiles,
    this.asyncOperationResourceTypeName,
    this.asyncTimeoutRules,
    this.authorizationActionMappings,
    this.availabilityZoneRule,
    this.capacityRule,
    this.category,
    this.checkNameAvailabilitySpecifications,
    this.commonApiVersions,
    this.crossTenantTokenValidation,
    this.defaultApiVersion,
    this.disallowedActionVerbs,
    this.disallowedEndUserOperations,
    this.dstsConfiguration,
    this.enableAsyncOperation,
    this.enableThirdPartyS2S,
    this.endpoints,
    this.extendedLocations,
    this.extensionOptions,
    this.featuresRule,
    this.frontdoorRequestMode,
    this.groupingTag,
    this.identityManagement,
    this.isPureProxy,
    this.legacyName,
    this.legacyNames,
    this.legacyPolicy,
    this.linkedAccessChecks,
    this.linkedNotificationRules,
    this.linkedOperationRules,
    this.loggingRules,
    this.management,
    this.manifestLink,
    this.marketplaceOptions,
    this.marketplaceType,
    this.metadata,
    this.notifications,
    this.onBehalfOfTokens,
    this.openApiConfiguration,
    this.policyExecutionType,
    this.quotaRule,
    this.regionality,
    this.requestHeaderOptions,
    this.requiredFeatures,
    this.resourceCache,
    this.resourceConcurrencyControlOptions,
    this.resourceDeletionPolicy,
    this.resourceGraphConfiguration,
    this.resourceManagementOptions,
    this.resourceMovePolicy,
    this.resourceProviderAuthorizationRules,
    this.resourceQueryManagement,
    this.resourceSubType,
    this.resourceTypeCommonAttributeManagement,
    this.resourceValidation,
    this.routingRule,
    this.routingType,
    this.serviceTreeInfos,
    this.skuLink,
    this.subscriptionLifecycleNotificationSpecifications,
    this.subscriptionStateRules,
    this.supportsTags,
    this.swaggerSpecifications,
    this.templateDeploymentOptions,
    this.templateDeploymentPolicy,
    this.throttlingRules,
    this.tokenAuthConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addResourceListTargetLocations': ?addResourceListTargetLocations,
      'additionalOptions': ?additionalOptions,
      'allowEmptyRoleAssignments': ?allowEmptyRoleAssignments,
      'allowedResourceNames': ?allowedResourceNames == null ? null : pulumi.Input.encodeList<AllowedResourceName, Map<String, dynamic>>(allowedResourceNames!, (value) => value.toMap()),
      'allowedTemplateDeploymentReferenceActions': ?allowedTemplateDeploymentReferenceActions,
      'allowedUnauthorizedActions': ?allowedUnauthorizedActions,
      'allowedUnauthorizedActionsExtensions': ?allowedUnauthorizedActionsExtensions == null ? null : pulumi.Input.encodeList<AllowedUnauthorizedActionsExtension, Map<String, dynamic>>(allowedUnauthorizedActionsExtensions!, (value) => value.toMap()),
      'apiProfiles': ?apiProfiles == null ? null : pulumi.Input.encodeList<ApiProfile, Map<String, dynamic>>(apiProfiles!, (value) => value.toMap()),
      'asyncOperationResourceTypeName': ?asyncOperationResourceTypeName,
      'asyncTimeoutRules': ?asyncTimeoutRules == null ? null : pulumi.Input.encodeList<AsyncTimeoutRule, Map<String, dynamic>>(asyncTimeoutRules!, (value) => value.toMap()),
      'authorizationActionMappings': ?authorizationActionMappings == null ? null : pulumi.Input.encodeList<AuthorizationActionMapping, Map<String, dynamic>>(authorizationActionMappings!, (value) => value.toMap()),
      'availabilityZoneRule': ?availabilityZoneRule == null ? null : availabilityZoneRule!.toMap(),
      'capacityRule': ?capacityRule == null ? null : capacityRule!.toMap(),
      'category': ?category,
      'checkNameAvailabilitySpecifications': ?checkNameAvailabilitySpecifications == null ? null : checkNameAvailabilitySpecifications!.toMap(),
      'commonApiVersions': ?commonApiVersions,
      'crossTenantTokenValidation': ?crossTenantTokenValidation,
      'defaultApiVersion': ?defaultApiVersion,
      'disallowedActionVerbs': ?disallowedActionVerbs,
      'disallowedEndUserOperations': ?disallowedEndUserOperations,
      'dstsConfiguration': ?dstsConfiguration == null ? null : dstsConfiguration!.toMap(),
      'enableAsyncOperation': ?enableAsyncOperation,
      'enableThirdPartyS2S': ?enableThirdPartyS2S,
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<ResourceTypeEndpoint, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'extendedLocations': ?extendedLocations == null ? null : pulumi.Input.encodeList<ExtendedLocationOptions, Map<String, dynamic>>(extendedLocations!, (value) => value.toMap()),
      'extensionOptions': ?extensionOptions == null ? null : extensionOptions!.toMap(),
      'featuresRule': ?featuresRule == null ? null : featuresRule!.toMap(),
      'frontdoorRequestMode': ?frontdoorRequestMode,
      'groupingTag': ?groupingTag,
      'identityManagement': ?identityManagement == null ? null : identityManagement!.toMap(),
      'isPureProxy': ?isPureProxy,
      'legacyName': ?legacyName,
      'legacyNames': ?legacyNames,
      'legacyPolicy': ?legacyPolicy == null ? null : legacyPolicy!.toMap(),
      'linkedAccessChecks': ?linkedAccessChecks == null ? null : pulumi.Input.encodeList<LinkedAccessCheck, Map<String, dynamic>>(linkedAccessChecks!, (value) => value.toMap()),
      'linkedNotificationRules': ?linkedNotificationRules == null ? null : pulumi.Input.encodeList<LinkedNotificationRule, Map<String, dynamic>>(linkedNotificationRules!, (value) => value.toMap()),
      'linkedOperationRules': ?linkedOperationRules == null ? null : pulumi.Input.encodeList<LinkedOperationRule, Map<String, dynamic>>(linkedOperationRules!, (value) => value.toMap()),
      'loggingRules': ?loggingRules == null ? null : pulumi.Input.encodeList<LoggingRule, Map<String, dynamic>>(loggingRules!, (value) => value.toMap()),
      'management': ?management == null ? null : management!.toMap(),
      'manifestLink': ?manifestLink,
      'marketplaceOptions': ?marketplaceOptions == null ? null : marketplaceOptions!.toMap(),
      'marketplaceType': ?marketplaceType == null ? null : marketplaceType!.value,
      'metadata': ?metadata,
      'notifications': ?notifications == null ? null : pulumi.Input.encodeList<Notification, Map<String, dynamic>>(notifications!, (value) => value.toMap()),
      'onBehalfOfTokens': ?onBehalfOfTokens == null ? null : onBehalfOfTokens!.toMap(),
      'openApiConfiguration': ?openApiConfiguration == null ? null : openApiConfiguration!.toMap(),
      'policyExecutionType': ?policyExecutionType,
      'quotaRule': ?quotaRule == null ? null : quotaRule!.toMap(),
      'regionality': ?regionality,
      'requestHeaderOptions': ?requestHeaderOptions == null ? null : requestHeaderOptions!.toMap(),
      'requiredFeatures': ?requiredFeatures,
      'resourceCache': ?resourceCache == null ? null : resourceCache!.toMap(),
      'resourceConcurrencyControlOptions': ?resourceConcurrencyControlOptions == null ? null : pulumi.Input.encodeMapValues<ResourceConcurrencyControlOption, Map<String, dynamic>>(resourceConcurrencyControlOptions!, (value) => value.toMap()),
      'resourceDeletionPolicy': ?resourceDeletionPolicy,
      'resourceGraphConfiguration': ?resourceGraphConfiguration == null ? null : resourceGraphConfiguration!.toMap(),
      'resourceManagementOptions': ?resourceManagementOptions == null ? null : resourceManagementOptions!.toMap(),
      'resourceMovePolicy': ?resourceMovePolicy == null ? null : resourceMovePolicy!.toMap(),
      'resourceProviderAuthorizationRules': ?resourceProviderAuthorizationRules == null ? null : resourceProviderAuthorizationRules!.toMap(),
      'resourceQueryManagement': ?resourceQueryManagement == null ? null : resourceQueryManagement!.toMap(),
      'resourceSubType': ?resourceSubType,
      'resourceTypeCommonAttributeManagement': ?resourceTypeCommonAttributeManagement == null ? null : resourceTypeCommonAttributeManagement!.toMap(),
      'resourceValidation': ?resourceValidation,
      'routingRule': ?routingRule == null ? null : routingRule!.toMap(),
      'routingType': ?routingType,
      'serviceTreeInfos': ?serviceTreeInfos == null ? null : pulumi.Input.encodeList<ServiceTreeInfo, Map<String, dynamic>>(serviceTreeInfos!, (value) => value.toMap()),
      'skuLink': ?skuLink,
      'subscriptionLifecycleNotificationSpecifications': ?subscriptionLifecycleNotificationSpecifications == null ? null : subscriptionLifecycleNotificationSpecifications!.toMap(),
      'subscriptionStateRules': ?subscriptionStateRules == null ? null : pulumi.Input.encodeList<SubscriptionStateRule, Map<String, dynamic>>(subscriptionStateRules!, (value) => value.toMap()),
      'supportsTags': ?supportsTags,
      'swaggerSpecifications': ?swaggerSpecifications == null ? null : pulumi.Input.encodeList<SwaggerSpecification, Map<String, dynamic>>(swaggerSpecifications!, (value) => value.toMap()),
      'templateDeploymentOptions': ?templateDeploymentOptions == null ? null : templateDeploymentOptions!.toMap(),
      'templateDeploymentPolicy': ?templateDeploymentPolicy == null ? null : templateDeploymentPolicy!.toMap(),
      'throttlingRules': ?throttlingRules == null ? null : pulumi.Input.encodeList<ThrottlingRule, Map<String, dynamic>>(throttlingRules!, (value) => value.toMap()),
      'tokenAuthConfiguration': ?tokenAuthConfiguration == null ? null : tokenAuthConfiguration!.toMap(),
    };
  }

  factory ResourceTypeRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationProperties(
      addResourceListTargetLocations: map['addResourceListTargetLocations'] == null ? null : map['addResourceListTargetLocations'] as bool,
      additionalOptions: map['additionalOptions'] == null ? null : map['additionalOptions'] as String,
      allowEmptyRoleAssignments: map['allowEmptyRoleAssignments'] == null ? null : map['allowEmptyRoleAssignments'] as bool,
      allowedResourceNames: map['allowedResourceNames'] == null ? null : pulumi.Input.decodeList<AllowedResourceName>(map['allowedResourceNames'], (value) => AllowedResourceName.fromMap((value as Map).cast<String, dynamic>())),
      allowedTemplateDeploymentReferenceActions: map['allowedTemplateDeploymentReferenceActions'] == null ? null : (map['allowedTemplateDeploymentReferenceActions'] as List).cast<String>(),
      allowedUnauthorizedActions: map['allowedUnauthorizedActions'] == null ? null : (map['allowedUnauthorizedActions'] as List).cast<String>(),
      allowedUnauthorizedActionsExtensions: map['allowedUnauthorizedActionsExtensions'] == null ? null : pulumi.Input.decodeList<AllowedUnauthorizedActionsExtension>(map['allowedUnauthorizedActionsExtensions'], (value) => AllowedUnauthorizedActionsExtension.fromMap((value as Map).cast<String, dynamic>())),
      apiProfiles: map['apiProfiles'] == null ? null : pulumi.Input.decodeList<ApiProfile>(map['apiProfiles'], (value) => ApiProfile.fromMap((value as Map).cast<String, dynamic>())),
      asyncOperationResourceTypeName: map['asyncOperationResourceTypeName'] == null ? null : map['asyncOperationResourceTypeName'] as String,
      asyncTimeoutRules: map['asyncTimeoutRules'] == null ? null : pulumi.Input.decodeList<AsyncTimeoutRule>(map['asyncTimeoutRules'], (value) => AsyncTimeoutRule.fromMap((value as Map).cast<String, dynamic>())),
      authorizationActionMappings: map['authorizationActionMappings'] == null ? null : pulumi.Input.decodeList<AuthorizationActionMapping>(map['authorizationActionMappings'], (value) => AuthorizationActionMapping.fromMap((value as Map).cast<String, dynamic>())),
      availabilityZoneRule: map['availabilityZoneRule'] == null ? null : ResourceTypeRegistrationPropertiesAvailabilityZoneRule.fromMap((map['availabilityZoneRule'] as Map).cast<String, dynamic>()),
      capacityRule: map['capacityRule'] == null ? null : ResourceTypeRegistrationPropertiesCapacityRule.fromMap((map['capacityRule'] as Map).cast<String, dynamic>()),
      category: map['category'] == null ? null : map['category'] as String,
      checkNameAvailabilitySpecifications: map['checkNameAvailabilitySpecifications'] == null ? null : ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications.fromMap((map['checkNameAvailabilitySpecifications'] as Map).cast<String, dynamic>()),
      commonApiVersions: map['commonApiVersions'] == null ? null : (map['commonApiVersions'] as List).cast<String>(),
      crossTenantTokenValidation: map['crossTenantTokenValidation'] == null ? null : map['crossTenantTokenValidation'] as String,
      defaultApiVersion: map['defaultApiVersion'] == null ? null : map['defaultApiVersion'] as String,
      disallowedActionVerbs: map['disallowedActionVerbs'] == null ? null : (map['disallowedActionVerbs'] as List).cast<String>(),
      disallowedEndUserOperations: map['disallowedEndUserOperations'] == null ? null : (map['disallowedEndUserOperations'] as List).cast<String>(),
      dstsConfiguration: map['dstsConfiguration'] == null ? null : ResourceTypeRegistrationPropertiesDstsConfiguration.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>()),
      enableAsyncOperation: map['enableAsyncOperation'] == null ? null : map['enableAsyncOperation'] as bool,
      enableThirdPartyS2S: map['enableThirdPartyS2S'] == null ? null : map['enableThirdPartyS2S'] as bool,
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<ResourceTypeEndpoint>(map['endpoints'], (value) => ResourceTypeEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocations: map['extendedLocations'] == null ? null : pulumi.Input.decodeList<ExtendedLocationOptions>(map['extendedLocations'], (value) => ExtendedLocationOptions.fromMap((value as Map).cast<String, dynamic>())),
      extensionOptions: map['extensionOptions'] == null ? null : ResourceTypeRegistrationPropertiesExtensionOptions.fromMap((map['extensionOptions'] as Map).cast<String, dynamic>()),
      featuresRule: map['featuresRule'] == null ? null : ResourceTypeRegistrationPropertiesFeaturesRule.fromMap((map['featuresRule'] as Map).cast<String, dynamic>()),
      frontdoorRequestMode: map['frontdoorRequestMode'] == null ? null : map['frontdoorRequestMode'] as String,
      groupingTag: map['groupingTag'] == null ? null : map['groupingTag'] as String,
      identityManagement: map['identityManagement'] == null ? null : ResourceTypeRegistrationPropertiesIdentityManagement.fromMap((map['identityManagement'] as Map).cast<String, dynamic>()),
      isPureProxy: map['isPureProxy'] == null ? null : map['isPureProxy'] as bool,
      legacyName: map['legacyName'] == null ? null : map['legacyName'] as String,
      legacyNames: map['legacyNames'] == null ? null : (map['legacyNames'] as List).cast<String>(),
      legacyPolicy: map['legacyPolicy'] == null ? null : ResourceTypeRegistrationPropertiesLegacyPolicy.fromMap((map['legacyPolicy'] as Map).cast<String, dynamic>()),
      linkedAccessChecks: map['linkedAccessChecks'] == null ? null : pulumi.Input.decodeList<LinkedAccessCheck>(map['linkedAccessChecks'], (value) => LinkedAccessCheck.fromMap((value as Map).cast<String, dynamic>())),
      linkedNotificationRules: map['linkedNotificationRules'] == null ? null : pulumi.Input.decodeList<LinkedNotificationRule>(map['linkedNotificationRules'], (value) => LinkedNotificationRule.fromMap((value as Map).cast<String, dynamic>())),
      linkedOperationRules: map['linkedOperationRules'] == null ? null : pulumi.Input.decodeList<LinkedOperationRule>(map['linkedOperationRules'], (value) => LinkedOperationRule.fromMap((value as Map).cast<String, dynamic>())),
      loggingRules: map['loggingRules'] == null ? null : pulumi.Input.decodeList<LoggingRule>(map['loggingRules'], (value) => LoggingRule.fromMap((value as Map).cast<String, dynamic>())),
      management: map['management'] == null ? null : ResourceTypeRegistrationPropertiesManagement.fromMap((map['management'] as Map).cast<String, dynamic>()),
      manifestLink: map['manifestLink'] == null ? null : map['manifestLink'] as String,
      marketplaceOptions: map['marketplaceOptions'] == null ? null : ResourceTypeRegistrationPropertiesMarketplaceOptions.fromMap((map['marketplaceOptions'] as Map).cast<String, dynamic>()),
      marketplaceType: map['marketplaceType'] == null ? null : MarketplaceType.fromValue(map['marketplaceType'] as String),
      metadata: map['metadata'] == null ? null : map['metadata'],
      notifications: map['notifications'] == null ? null : pulumi.Input.decodeList<Notification>(map['notifications'], (value) => Notification.fromMap((value as Map).cast<String, dynamic>())),
      onBehalfOfTokens: map['onBehalfOfTokens'] == null ? null : ResourceTypeOnBehalfOfToken.fromMap((map['onBehalfOfTokens'] as Map).cast<String, dynamic>()),
      openApiConfiguration: map['openApiConfiguration'] == null ? null : OpenApiConfiguration.fromMap((map['openApiConfiguration'] as Map).cast<String, dynamic>()),
      policyExecutionType: map['policyExecutionType'] == null ? null : map['policyExecutionType'] as String,
      quotaRule: map['quotaRule'] == null ? null : QuotaRule.fromMap((map['quotaRule'] as Map).cast<String, dynamic>()),
      regionality: map['regionality'] == null ? null : map['regionality'] as String,
      requestHeaderOptions: map['requestHeaderOptions'] == null ? null : ResourceTypeRegistrationPropertiesRequestHeaderOptions.fromMap((map['requestHeaderOptions'] as Map).cast<String, dynamic>()),
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
      resourceCache: map['resourceCache'] == null ? null : ResourceTypeRegistrationPropertiesResourceCache.fromMap((map['resourceCache'] as Map).cast<String, dynamic>()),
      resourceConcurrencyControlOptions: map['resourceConcurrencyControlOptions'] == null ? null : pulumi.Input.decodeMapValues<ResourceConcurrencyControlOption>(map['resourceConcurrencyControlOptions'], (value) => ResourceConcurrencyControlOption.fromMap((value as Map).cast<String, dynamic>())),
      resourceDeletionPolicy: map['resourceDeletionPolicy'] == null ? null : map['resourceDeletionPolicy'] as String,
      resourceGraphConfiguration: map['resourceGraphConfiguration'] == null ? null : ResourceTypeRegistrationPropertiesResourceGraphConfiguration.fromMap((map['resourceGraphConfiguration'] as Map).cast<String, dynamic>()),
      resourceManagementOptions: map['resourceManagementOptions'] == null ? null : ResourceTypeRegistrationPropertiesResourceManagementOptions.fromMap((map['resourceManagementOptions'] as Map).cast<String, dynamic>()),
      resourceMovePolicy: map['resourceMovePolicy'] == null ? null : ResourceTypeRegistrationPropertiesResourceMovePolicy.fromMap((map['resourceMovePolicy'] as Map).cast<String, dynamic>()),
      resourceProviderAuthorizationRules: map['resourceProviderAuthorizationRules'] == null ? null : ResourceProviderAuthorizationRules.fromMap((map['resourceProviderAuthorizationRules'] as Map).cast<String, dynamic>()),
      resourceQueryManagement: map['resourceQueryManagement'] == null ? null : ResourceTypeRegistrationPropertiesResourceQueryManagement.fromMap((map['resourceQueryManagement'] as Map).cast<String, dynamic>()),
      resourceSubType: map['resourceSubType'] == null ? null : map['resourceSubType'] as String,
      resourceTypeCommonAttributeManagement: map['resourceTypeCommonAttributeManagement'] == null ? null : ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement.fromMap((map['resourceTypeCommonAttributeManagement'] as Map).cast<String, dynamic>()),
      resourceValidation: map['resourceValidation'] == null ? null : map['resourceValidation'] as String,
      routingRule: map['routingRule'] == null ? null : ResourceTypeRegistrationPropertiesRoutingRule.fromMap((map['routingRule'] as Map).cast<String, dynamic>()),
      routingType: map['routingType'] == null ? null : map['routingType'] as String,
      serviceTreeInfos: map['serviceTreeInfos'] == null ? null : pulumi.Input.decodeList<ServiceTreeInfo>(map['serviceTreeInfos'], (value) => ServiceTreeInfo.fromMap((value as Map).cast<String, dynamic>())),
      skuLink: map['skuLink'] == null ? null : map['skuLink'] as String,
      subscriptionLifecycleNotificationSpecifications: map['subscriptionLifecycleNotificationSpecifications'] == null ? null : ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap((map['subscriptionLifecycleNotificationSpecifications'] as Map).cast<String, dynamic>()),
      subscriptionStateRules: map['subscriptionStateRules'] == null ? null : pulumi.Input.decodeList<SubscriptionStateRule>(map['subscriptionStateRules'], (value) => SubscriptionStateRule.fromMap((value as Map).cast<String, dynamic>())),
      supportsTags: map['supportsTags'] == null ? null : map['supportsTags'] as bool,
      swaggerSpecifications: map['swaggerSpecifications'] == null ? null : pulumi.Input.decodeList<SwaggerSpecification>(map['swaggerSpecifications'], (value) => SwaggerSpecification.fromMap((value as Map).cast<String, dynamic>())),
      templateDeploymentOptions: map['templateDeploymentOptions'] == null ? null : ResourceTypeRegistrationPropertiesTemplateDeploymentOptions.fromMap((map['templateDeploymentOptions'] as Map).cast<String, dynamic>()),
      templateDeploymentPolicy: map['templateDeploymentPolicy'] == null ? null : ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy.fromMap((map['templateDeploymentPolicy'] as Map).cast<String, dynamic>()),
      throttlingRules: map['throttlingRules'] == null ? null : pulumi.Input.decodeList<ThrottlingRule>(map['throttlingRules'], (value) => ThrottlingRule.fromMap((value as Map).cast<String, dynamic>())),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : TokenAuthConfiguration.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

