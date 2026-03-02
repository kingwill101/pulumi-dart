// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_mapping_rule_profile_response.dart';

/// Azure arc kubernetes deploy mapping rule profile.
class AzureArcKubernetesDeployMappingRuleProfileResponse {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The helm mapping rule profile.
  final pulumi.Input<HelmMappingRuleProfileResponse>? helmMappingRuleProfile;

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
      'helmMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<HelmMappingRuleProfileResponse, Map<String, dynamic>>(helmMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureArcKubernetesDeployMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesDeployMappingRuleProfileResponse(
      applicationEnablement: map['applicationEnablement'] == null ? null : (map['applicationEnablement'] as String).input(),
      helmMappingRuleProfile: map['helmMappingRuleProfile'] == null ? null : (HelmMappingRuleProfileResponse.fromMap((map['helmMappingRuleProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

