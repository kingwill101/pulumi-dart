// ignore_for_file: unused_element, unnecessary_cast

import 'vhd_image_mapping_rule_profile.dart';

/// Azure vhd deploy mapping rule profile.
class AzureCoreVhdImageDeployMappingRuleProfile {
  /// The application enablement.
  final String? applicationEnablement;
  /// The vhd mapping rule profile.
  final VhdImageMappingRuleProfile? vhdImageMappingRuleProfile;

  /// Creates a new [AzureCoreVhdImageDeployMappingRuleProfile].
  /// [applicationEnablement] The application enablement.
  /// [vhdImageMappingRuleProfile] The vhd mapping rule profile.
  AzureCoreVhdImageDeployMappingRuleProfile({
    this.applicationEnablement,
    this.vhdImageMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'vhdImageMappingRuleProfile': ?vhdImageMappingRuleProfile == null ? null : vhdImageMappingRuleProfile!.toMap(),
    };
  }

  factory AzureCoreVhdImageDeployMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return AzureCoreVhdImageDeployMappingRuleProfile(
      applicationEnablement: map['applicationEnablement'] == null ? null : map['applicationEnablement'] as String,
      vhdImageMappingRuleProfile: map['vhdImageMappingRuleProfile'] == null ? null : VhdImageMappingRuleProfile.fromMap((map['vhdImageMappingRuleProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

