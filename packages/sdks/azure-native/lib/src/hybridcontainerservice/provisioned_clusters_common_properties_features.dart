// ignore_for_file: unused_element, unnecessary_cast

import 'arc_agent_profile.dart';

/// Additional features specs like Arc Agent Onboarding.
class ProvisionedClustersCommonPropertiesFeatures {
  /// Arc agentry configuration for the provisioned cluster.
  final ArcAgentProfile? arcAgentProfile;

  /// Creates a new [ProvisionedClustersCommonPropertiesFeatures].
  /// [arcAgentProfile] Arc agentry configuration for the provisioned cluster.
  ProvisionedClustersCommonPropertiesFeatures({
    this.arcAgentProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAgentProfile': ?arcAgentProfile == null ? null : arcAgentProfile!.toMap(),
    };
  }

  factory ProvisionedClustersCommonPropertiesFeatures.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesFeatures(
      arcAgentProfile: map['arcAgentProfile'] == null ? null : ArcAgentProfile.fromMap((map['arcAgentProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

