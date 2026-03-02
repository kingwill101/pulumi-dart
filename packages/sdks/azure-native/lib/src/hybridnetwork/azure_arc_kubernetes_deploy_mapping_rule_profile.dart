// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_mapping_rule_profile.dart';

/// Azure arc kubernetes deploy mapping rule profile.
class AzureArcKubernetesDeployMappingRuleProfile {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The helm mapping rule profile.
  final pulumi.Input<HelmMappingRuleProfile>? helmMappingRuleProfile;

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
      'helmMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<HelmMappingRuleProfile, Map<String, dynamic>>(helmMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureArcKubernetesDeployMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesDeployMappingRuleProfile(
      applicationEnablement: map['applicationEnablement'] == null ? null : (map['applicationEnablement'] as String).input(),
      helmMappingRuleProfile: map['helmMappingRuleProfile'] == null ? null : (HelmMappingRuleProfile.fromMap((map['helmMappingRuleProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

