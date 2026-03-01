// ignore_for_file: unused_element, unnecessary_cast

import 'helm_mapping_rule_profile_response.dart';

/// Azure arc kubernetes deploy mapping rule profile.
class AzureArcKubernetesDeployMappingRuleProfileResponse {
  /// The application enablement.
  final String? applicationEnablement;
  /// The helm mapping rule profile.
  final HelmMappingRuleProfileResponse? helmMappingRuleProfile;

  /// Creates a new [AzureArcKubernetesDeployMappingRuleProfileResponse].
  /// [applicationEnablement] The application enablement.
  /// [helmMappingRuleProfile] The helm mapping rule profile.
  AzureArcKubernetesDeployMappingRuleProfileResponse({
    this.applicationEnablement,
    this.helmMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'helmMappingRuleProfile': ?helmMappingRuleProfile == null ? null : helmMappingRuleProfile!.toMap(),
    };
  }

  factory AzureArcKubernetesDeployMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesDeployMappingRuleProfileResponse(
      applicationEnablement: map['applicationEnablement'] == null ? null : map['applicationEnablement'] as String,
      helmMappingRuleProfile: map['helmMappingRuleProfile'] == null ? null : HelmMappingRuleProfileResponse.fromMap((map['helmMappingRuleProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

