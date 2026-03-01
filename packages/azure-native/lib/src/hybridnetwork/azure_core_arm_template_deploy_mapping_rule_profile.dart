// ignore_for_file: unused_element, unnecessary_cast

import 'arm_template_mapping_rule_profile.dart';

/// Azure template deploy mapping rule profile.
class AzureCoreArmTemplateDeployMappingRuleProfile {
  /// The application enablement.
  final String? applicationEnablement;
  /// The template mapping rule profile.
  final ArmTemplateMappingRuleProfile? templateMappingRuleProfile;

  /// Creates a new [AzureCoreArmTemplateDeployMappingRuleProfile].
  /// [applicationEnablement] The application enablement.
  /// [templateMappingRuleProfile] The template mapping rule profile.
  AzureCoreArmTemplateDeployMappingRuleProfile({
    this.applicationEnablement,
    this.templateMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'templateMappingRuleProfile': ?templateMappingRuleProfile == null ? null : templateMappingRuleProfile!.toMap(),
    };
  }

  factory AzureCoreArmTemplateDeployMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return AzureCoreArmTemplateDeployMappingRuleProfile(
      applicationEnablement: map['applicationEnablement'] == null ? null : map['applicationEnablement'] as String,
      templateMappingRuleProfile: map['templateMappingRuleProfile'] == null ? null : ArmTemplateMappingRuleProfile.fromMap((map['templateMappingRuleProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

