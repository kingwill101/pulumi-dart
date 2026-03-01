// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fanout_linked_notification_rule.dart';
import 'notification.dart';
import 'provider_registration_properties_private_resource_provider_configuration.dart';
import 'provider_registration_properties_provider_hub_metadata.dart';
import 'provider_registration_properties_subscription_lifecycle_notification_specifications.dart';
import 'resource_hydration_account.dart';
import 'resource_provider_authorization.dart';
import 'resource_provider_authorization_rules.dart';
import 'resource_provider_capabilities.dart';
import 'resource_provider_endpoint.dart';
import 'resource_provider_manifest_properties_dsts_configuration.dart';
import 'resource_provider_manifest_properties_features_rule.dart';
import 'resource_provider_manifest_properties_management.dart';
import 'resource_provider_manifest_properties_notification_settings.dart';
import 'resource_provider_manifest_properties_provider_authentication.dart';
import 'resource_provider_manifest_properties_request_header_options.dart';
import 'resource_provider_manifest_properties_resource_group_lock_option_during_move.dart';
import 'resource_provider_manifest_properties_response_options.dart';
import 'resource_provider_manifest_properties_template_deployment_options.dart';
import 'resource_provider_service.dart';
import 'token_auth_configuration.dart';

class ProviderRegistrationProperties {
  /// The capabilities.
  final List<ResourceProviderCapabilities>? capabilities;
  /// The cross tenant token validation.
  final String? crossTenantTokenValidation;
  /// Custom manifest version.
  final String? customManifestVersion;
  /// The dsts configuration.
  final ResourceProviderManifestPropertiesDstsConfiguration? dstsConfiguration;
  /// The enable tenant linked notification.
  final bool? enableTenantLinkedNotification;
  /// The features rule.
  final ResourceProviderManifestPropertiesFeaturesRule? featuresRule;
  /// The global notification endpoints.
  final List<ResourceProviderEndpoint>? globalNotificationEndpoints;
  /// Legacy namespace.
  final String? legacyNamespace;
  /// Legacy registrations.
  final List<String>? legacyRegistrations;
  /// The linked notification rules.
  final List<FanoutLinkedNotificationRule>? linkedNotificationRules;
  /// The resource provider management.
  final ResourceProviderManifestPropertiesManagement? management;
  /// Management groups global notification endpoints.
  final List<ResourceProviderEndpoint>? managementGroupGlobalNotificationEndpoints;
  /// The metadata.
  final dynamic metadata;
  /// The namespace.
  final String? namespace;
  /// Notification options.
  final String? notificationOptions;
  /// Notification settings.
  final ResourceProviderManifestPropertiesNotificationSettings? notificationSettings;
  /// The notifications.
  final List<Notification>? notifications;
  /// Optional features.
  final List<String>? optionalFeatures;
  /// The private resource provider configuration.
  final ProviderRegistrationPropertiesPrivateResourceProviderConfiguration? privateResourceProviderConfiguration;
  /// The provider authentication.
  final ResourceProviderManifestPropertiesProviderAuthentication? providerAuthentication;
  /// The provider authorizations.
  final List<ResourceProviderAuthorization>? providerAuthorizations;
  /// The provider hub metadata.
  final ProviderRegistrationPropertiesProviderHubMetadata? providerHubMetadata;
  /// The provider type.
  final String? providerType;
  /// The provider version.
  final String? providerVersion;
  /// The request header options.
  final ResourceProviderManifestPropertiesRequestHeaderOptions? requestHeaderOptions;
  /// The required features.
  final List<String>? requiredFeatures;
  /// Resource group lock option during move.
  final ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove? resourceGroupLockOptionDuringMove;
  /// resource hydration accounts
  final List<ResourceHydrationAccount>? resourceHydrationAccounts;
  /// The resource provider authorization rules.
  final ResourceProviderAuthorizationRules? resourceProviderAuthorizationRules;
  /// Response options.
  final ResourceProviderManifestPropertiesResponseOptions? responseOptions;
  /// The service name.
  final String? serviceName;
  /// The services.
  final List<ResourceProviderService>? services;
  /// The subscription lifecycle notification specifications.
  final ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications? subscriptionLifecycleNotificationSpecifications;
  /// The template deployment options.
  final ResourceProviderManifestPropertiesTemplateDeploymentOptions? templateDeploymentOptions;
  /// The token auth configuration.
  final TokenAuthConfiguration? tokenAuthConfiguration;

  /// Creates a new [ProviderRegistrationProperties].
  /// [capabilities] The capabilities.
  /// [crossTenantTokenValidation] The cross tenant token validation.
  /// [customManifestVersion] Custom manifest version.
  /// [dstsConfiguration] The dsts configuration.
  /// [enableTenantLinkedNotification] The enable tenant linked notification.
  /// [featuresRule] The features rule.
  /// [globalNotificationEndpoints] The global notification endpoints.
  /// [legacyNamespace] Legacy namespace.
  /// [legacyRegistrations] Legacy registrations.
  /// [linkedNotificationRules] The linked notification rules.
  /// [management] The resource provider management.
  /// [managementGroupGlobalNotificationEndpoints] Management groups global notification endpoints.
  /// [metadata] The metadata.
  /// [namespace] The namespace.
  /// [notificationOptions] Notification options.
  /// [notificationSettings] Notification settings.
  /// [notifications] The notifications.
  /// [optionalFeatures] Optional features.
  /// [privateResourceProviderConfiguration] The private resource provider configuration.
  /// [providerAuthentication] The provider authentication.
  /// [providerAuthorizations] The provider authorizations.
  /// [providerHubMetadata] The provider hub metadata.
  /// [providerType] The provider type.
  /// [providerVersion] The provider version.
  /// [requestHeaderOptions] The request header options.
  /// [requiredFeatures] The required features.
  /// [resourceGroupLockOptionDuringMove] Resource group lock option during move.
  /// [resourceHydrationAccounts] resource hydration accounts
  /// [resourceProviderAuthorizationRules] The resource provider authorization rules.
  /// [responseOptions] Response options.
  /// [serviceName] The service name.
  /// [services] The services.
  /// [subscriptionLifecycleNotificationSpecifications] The subscription lifecycle notification specifications.
  /// [templateDeploymentOptions] The template deployment options.
  /// [tokenAuthConfiguration] The token auth configuration.
  ProviderRegistrationProperties({
    this.capabilities,
    this.crossTenantTokenValidation,
    this.customManifestVersion,
    this.dstsConfiguration,
    this.enableTenantLinkedNotification,
    this.featuresRule,
    this.globalNotificationEndpoints,
    this.legacyNamespace,
    this.legacyRegistrations,
    this.linkedNotificationRules,
    this.management,
    this.managementGroupGlobalNotificationEndpoints,
    this.metadata,
    this.namespace,
    this.notificationOptions,
    this.notificationSettings,
    this.notifications,
    this.optionalFeatures,
    this.privateResourceProviderConfiguration,
    this.providerAuthentication,
    this.providerAuthorizations,
    this.providerHubMetadata,
    this.providerType,
    this.providerVersion,
    this.requestHeaderOptions,
    this.requiredFeatures,
    this.resourceGroupLockOptionDuringMove,
    this.resourceHydrationAccounts,
    this.resourceProviderAuthorizationRules,
    this.responseOptions,
    this.serviceName,
    this.services,
    this.subscriptionLifecycleNotificationSpecifications,
    this.templateDeploymentOptions,
    this.tokenAuthConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : pulumi.Input.encodeList<ResourceProviderCapabilities, Map<String, dynamic>>(capabilities!, (value) => value.toMap()),
      'crossTenantTokenValidation': ?crossTenantTokenValidation,
      'customManifestVersion': ?customManifestVersion,
      'dstsConfiguration': ?dstsConfiguration == null ? null : dstsConfiguration!.toMap(),
      'enableTenantLinkedNotification': ?enableTenantLinkedNotification,
      'featuresRule': ?featuresRule == null ? null : featuresRule!.toMap(),
      'globalNotificationEndpoints': ?globalNotificationEndpoints == null ? null : pulumi.Input.encodeList<ResourceProviderEndpoint, Map<String, dynamic>>(globalNotificationEndpoints!, (value) => value.toMap()),
      'legacyNamespace': ?legacyNamespace,
      'legacyRegistrations': ?legacyRegistrations,
      'linkedNotificationRules': ?linkedNotificationRules == null ? null : pulumi.Input.encodeList<FanoutLinkedNotificationRule, Map<String, dynamic>>(linkedNotificationRules!, (value) => value.toMap()),
      'management': ?management == null ? null : management!.toMap(),
      'managementGroupGlobalNotificationEndpoints': ?managementGroupGlobalNotificationEndpoints == null ? null : pulumi.Input.encodeList<ResourceProviderEndpoint, Map<String, dynamic>>(managementGroupGlobalNotificationEndpoints!, (value) => value.toMap()),
      'metadata': ?metadata,
      'namespace': ?namespace,
      'notificationOptions': ?notificationOptions,
      'notificationSettings': ?notificationSettings == null ? null : notificationSettings!.toMap(),
      'notifications': ?notifications == null ? null : pulumi.Input.encodeList<Notification, Map<String, dynamic>>(notifications!, (value) => value.toMap()),
      'optionalFeatures': ?optionalFeatures,
      'privateResourceProviderConfiguration': ?privateResourceProviderConfiguration == null ? null : privateResourceProviderConfiguration!.toMap(),
      'providerAuthentication': ?providerAuthentication == null ? null : providerAuthentication!.toMap(),
      'providerAuthorizations': ?providerAuthorizations == null ? null : pulumi.Input.encodeList<ResourceProviderAuthorization, Map<String, dynamic>>(providerAuthorizations!, (value) => value.toMap()),
      'providerHubMetadata': ?providerHubMetadata == null ? null : providerHubMetadata!.toMap(),
      'providerType': ?providerType,
      'providerVersion': ?providerVersion,
      'requestHeaderOptions': ?requestHeaderOptions == null ? null : requestHeaderOptions!.toMap(),
      'requiredFeatures': ?requiredFeatures,
      'resourceGroupLockOptionDuringMove': ?resourceGroupLockOptionDuringMove == null ? null : resourceGroupLockOptionDuringMove!.toMap(),
      'resourceHydrationAccounts': ?resourceHydrationAccounts == null ? null : pulumi.Input.encodeList<ResourceHydrationAccount, Map<String, dynamic>>(resourceHydrationAccounts!, (value) => value.toMap()),
      'resourceProviderAuthorizationRules': ?resourceProviderAuthorizationRules == null ? null : resourceProviderAuthorizationRules!.toMap(),
      'responseOptions': ?responseOptions == null ? null : responseOptions!.toMap(),
      'serviceName': ?serviceName,
      'services': ?services == null ? null : pulumi.Input.encodeList<ResourceProviderService, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'subscriptionLifecycleNotificationSpecifications': ?subscriptionLifecycleNotificationSpecifications == null ? null : subscriptionLifecycleNotificationSpecifications!.toMap(),
      'templateDeploymentOptions': ?templateDeploymentOptions == null ? null : templateDeploymentOptions!.toMap(),
      'tokenAuthConfiguration': ?tokenAuthConfiguration == null ? null : tokenAuthConfiguration!.toMap(),
    };
  }

  factory ProviderRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationProperties(
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<ResourceProviderCapabilities>(map['capabilities'], (value) => ResourceProviderCapabilities.fromMap((value as Map).cast<String, dynamic>())),
      crossTenantTokenValidation: map['crossTenantTokenValidation'] == null ? null : map['crossTenantTokenValidation'] as String,
      customManifestVersion: map['customManifestVersion'] == null ? null : map['customManifestVersion'] as String,
      dstsConfiguration: map['dstsConfiguration'] == null ? null : ResourceProviderManifestPropertiesDstsConfiguration.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>()),
      enableTenantLinkedNotification: map['enableTenantLinkedNotification'] == null ? null : map['enableTenantLinkedNotification'] as bool,
      featuresRule: map['featuresRule'] == null ? null : ResourceProviderManifestPropertiesFeaturesRule.fromMap((map['featuresRule'] as Map).cast<String, dynamic>()),
      globalNotificationEndpoints: map['globalNotificationEndpoints'] == null ? null : pulumi.Input.decodeList<ResourceProviderEndpoint>(map['globalNotificationEndpoints'], (value) => ResourceProviderEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      legacyNamespace: map['legacyNamespace'] == null ? null : map['legacyNamespace'] as String,
      legacyRegistrations: map['legacyRegistrations'] == null ? null : (map['legacyRegistrations'] as List).cast<String>(),
      linkedNotificationRules: map['linkedNotificationRules'] == null ? null : pulumi.Input.decodeList<FanoutLinkedNotificationRule>(map['linkedNotificationRules'], (value) => FanoutLinkedNotificationRule.fromMap((value as Map).cast<String, dynamic>())),
      management: map['management'] == null ? null : ResourceProviderManifestPropertiesManagement.fromMap((map['management'] as Map).cast<String, dynamic>()),
      managementGroupGlobalNotificationEndpoints: map['managementGroupGlobalNotificationEndpoints'] == null ? null : pulumi.Input.decodeList<ResourceProviderEndpoint>(map['managementGroupGlobalNotificationEndpoints'], (value) => ResourceProviderEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : map['metadata'],
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      notificationOptions: map['notificationOptions'] == null ? null : map['notificationOptions'] as String,
      notificationSettings: map['notificationSettings'] == null ? null : ResourceProviderManifestPropertiesNotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>()),
      notifications: map['notifications'] == null ? null : pulumi.Input.decodeList<Notification>(map['notifications'], (value) => Notification.fromMap((value as Map).cast<String, dynamic>())),
      optionalFeatures: map['optionalFeatures'] == null ? null : (map['optionalFeatures'] as List).cast<String>(),
      privateResourceProviderConfiguration: map['privateResourceProviderConfiguration'] == null ? null : ProviderRegistrationPropertiesPrivateResourceProviderConfiguration.fromMap((map['privateResourceProviderConfiguration'] as Map).cast<String, dynamic>()),
      providerAuthentication: map['providerAuthentication'] == null ? null : ResourceProviderManifestPropertiesProviderAuthentication.fromMap((map['providerAuthentication'] as Map).cast<String, dynamic>()),
      providerAuthorizations: map['providerAuthorizations'] == null ? null : pulumi.Input.decodeList<ResourceProviderAuthorization>(map['providerAuthorizations'], (value) => ResourceProviderAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      providerHubMetadata: map['providerHubMetadata'] == null ? null : ProviderRegistrationPropertiesProviderHubMetadata.fromMap((map['providerHubMetadata'] as Map).cast<String, dynamic>()),
      providerType: map['providerType'] == null ? null : map['providerType'] as String,
      providerVersion: map['providerVersion'] == null ? null : map['providerVersion'] as String,
      requestHeaderOptions: map['requestHeaderOptions'] == null ? null : ResourceProviderManifestPropertiesRequestHeaderOptions.fromMap((map['requestHeaderOptions'] as Map).cast<String, dynamic>()),
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
      resourceGroupLockOptionDuringMove: map['resourceGroupLockOptionDuringMove'] == null ? null : ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove.fromMap((map['resourceGroupLockOptionDuringMove'] as Map).cast<String, dynamic>()),
      resourceHydrationAccounts: map['resourceHydrationAccounts'] == null ? null : pulumi.Input.decodeList<ResourceHydrationAccount>(map['resourceHydrationAccounts'], (value) => ResourceHydrationAccount.fromMap((value as Map).cast<String, dynamic>())),
      resourceProviderAuthorizationRules: map['resourceProviderAuthorizationRules'] == null ? null : ResourceProviderAuthorizationRules.fromMap((map['resourceProviderAuthorizationRules'] as Map).cast<String, dynamic>()),
      responseOptions: map['responseOptions'] == null ? null : ResourceProviderManifestPropertiesResponseOptions.fromMap((map['responseOptions'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      services: map['services'] == null ? null : pulumi.Input.decodeList<ResourceProviderService>(map['services'], (value) => ResourceProviderService.fromMap((value as Map).cast<String, dynamic>())),
      subscriptionLifecycleNotificationSpecifications: map['subscriptionLifecycleNotificationSpecifications'] == null ? null : ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap((map['subscriptionLifecycleNotificationSpecifications'] as Map).cast<String, dynamic>()),
      templateDeploymentOptions: map['templateDeploymentOptions'] == null ? null : ResourceProviderManifestPropertiesTemplateDeploymentOptions.fromMap((map['templateDeploymentOptions'] as Map).cast<String, dynamic>()),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : TokenAuthConfiguration.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

