// ignore_for_file: unused_element, unnecessary_cast

import 'helm_mapping_rule_profile.dart';

/// Azure arc kubernetes deploy mapping rule profile.
class AzureArcKubernetesDeployMappingRuleProfile {
  /// The application enablement.
  final String? applicationEnablement;
  /// The helm mapping rule profile.
  final HelmMappingRuleProfile? helmMappingRuleProfile;

  /// Creates a new [AzureArcKubernetesDeployMappingRuleProfile].
  /// [applicationEnablement] The application enablement.
  /// [helmMappingRuleProfile] The helm mapping rule profile.
  AzureArcKubernetesDeployMappingRuleProfile({
    this.applicationEnablement,
    this.helmMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'helmMappingRuleProfile': ?helmMappingRuleProfile == null ? null : helmMappingRuleProfile!.toMap(),
    };
  }

  factory AzureArcKubernetesDeployMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesDeployMappingRuleProfile(
      applicationEnablement: map['applicationEnablement'] == null ? null : map['applicationEnablement'] as String,
      helmMappingRuleProfile: map['helmMappingRuleProfile'] == null ? null : HelmMappingRuleProfile.fromMap((map['helmMappingRuleProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

