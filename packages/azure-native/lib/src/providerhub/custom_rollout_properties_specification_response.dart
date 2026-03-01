// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_specification_auto_provision_config_response.dart';
import 'custom_rollout_specification_canary_response.dart';
import 'custom_rollout_specification_provider_registration_response.dart';
import 'resource_type_registration_response.dart';

/// The specification.
class CustomRolloutPropertiesSpecificationResponse {
  /// The auto provisioning configuration.
  final CustomRolloutSpecificationAutoProvisionConfigResponse? autoProvisionConfig;
  /// The canary region configuration.
  final CustomRolloutSpecificationCanaryResponse? canary;
  /// The provider registration.
  final CustomRolloutSpecificationProviderRegistrationResponse? providerRegistration;
  /// Whether refreshing subscription registration is enabled or disabled.
  final bool? refreshSubscriptionRegistration;
  /// The list of ARM regions scoped for the release.
  final List<String>? releaseScopes;
  /// The resource type registrations.
  final List<ResourceTypeRegistrationResponse>? resourceTypeRegistrations;
  /// Whether release scope validation should be skipped.
  final bool? skipReleaseScopeValidation;

  /// Creates a new [CustomRolloutPropertiesSpecificationResponse].
  /// [autoProvisionConfig] The auto provisioning configuration.
  /// [canary] The canary region configuration.
  /// [providerRegistration] The provider registration.
  /// [refreshSubscriptionRegistration] Whether refreshing subscription registration is enabled or disabled.
  /// [releaseScopes] The list of ARM regions scoped for the release.
  /// [resourceTypeRegistrations] The resource type registrations.
  /// [skipReleaseScopeValidation] Whether release scope validation should be skipped.
  CustomRolloutPropertiesSpecificationResponse({
    this.autoProvisionConfig,
    this.canary,
    this.providerRegistration,
    this.refreshSubscriptionRegistration,
    this.releaseScopes,
    this.resourceTypeRegistrations,
    this.skipReleaseScopeValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisionConfig': ?autoProvisionConfig == null ? null : autoProvisionConfig!.toMap(),
      'canary': ?canary == null ? null : canary!.toMap(),
      'providerRegistration': ?providerRegistration == null ? null : providerRegistration!.toMap(),
      'refreshSubscriptionRegistration': ?refreshSubscriptionRegistration,
      'releaseScopes': ?releaseScopes,
      'resourceTypeRegistrations': ?resourceTypeRegistrations == null ? null : pulumi.Input.encodeList<ResourceTypeRegistrationResponse, Map<String, dynamic>>(resourceTypeRegistrations!, (value) => value.toMap()),
      'skipReleaseScopeValidation': ?skipReleaseScopeValidation,
    };
  }

  factory CustomRolloutPropertiesSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return CustomRolloutPropertiesSpecificationResponse(
      autoProvisionConfig: map['autoProvisionConfig'] == null ? null : CustomRolloutSpecificationAutoProvisionConfigResponse.fromMap((map['autoProvisionConfig'] as Map).cast<String, dynamic>()),
      canary: map['canary'] == null ? null : CustomRolloutSpecificationCanaryResponse.fromMap((map['canary'] as Map).cast<String, dynamic>()),
      providerRegistration: map['providerRegistration'] == null ? null : CustomRolloutSpecificationProviderRegistrationResponse.fromMap((map['providerRegistration'] as Map).cast<String, dynamic>()),
      refreshSubscriptionRegistration: map['refreshSubscriptionRegistration'] == null ? null : map['refreshSubscriptionRegistration'] as bool,
      releaseScopes: map['releaseScopes'] == null ? null : (map['releaseScopes'] as List).cast<String>(),
      resourceTypeRegistrations: map['resourceTypeRegistrations'] == null ? null : pulumi.Input.decodeList<ResourceTypeRegistrationResponse>(map['resourceTypeRegistrations'], (value) => ResourceTypeRegistrationResponse.fromMap((value as Map).cast<String, dynamic>())),
      skipReleaseScopeValidation: map['skipReleaseScopeValidation'] == null ? null : map['skipReleaseScopeValidation'] as bool,
    );
  }
}

