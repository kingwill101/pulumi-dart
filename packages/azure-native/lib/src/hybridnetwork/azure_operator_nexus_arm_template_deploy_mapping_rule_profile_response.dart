// ignore_for_file: unused_element, unnecessary_cast

import 'arm_template_mapping_rule_profile_response.dart';

/// Azure Operator Distributed Services template deploy mapping rule profile.
class AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse {
  /// The application enablement.
  final String? applicationEnablement;
  /// The template mapping rule profile.
  final ArmTemplateMappingRuleProfileResponse? templateMappingRuleProfile;

  /// Creates a new [AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse].
  /// [applicationEnablement] The application enablement.
  /// [templateMappingRuleProfile] The template mapping rule profile.
  AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse({
    this.applicationEnablement,
    this.templateMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'templateMappingRuleProfile': ?templateMappingRuleProfile == null ? null : templateMappingRuleProfile!.toMap(),
    };
  }

  factory AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse(
      applicationEnablement: map['applicationEnablement'] == null ? null : map['applicationEnablement'] as String,
      templateMappingRuleProfile: map['templateMappingRuleProfile'] == null ? null : ArmTemplateMappingRuleProfileResponse.fromMap((map['templateMappingRuleProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

