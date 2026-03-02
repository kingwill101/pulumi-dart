// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_mapping_rule_profile_response.dart';

/// Azure Operator Distributed Services template deploy mapping rule profile.
class AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The template mapping rule profile.
  final pulumi.Input<ArmTemplateMappingRuleProfileResponse>? templateMappingRuleProfile;

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
      'templateMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<ArmTemplateMappingRuleProfileResponse, Map<String, dynamic>>(templateMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusArmTemplateDeployMappingRuleProfileResponse(
      applicationEnablement: map['applicationEnablement'] == null ? null : (map['applicationEnablement']! as String).input(),
      templateMappingRuleProfile: map['templateMappingRuleProfile'] == null ? null : (ArmTemplateMappingRuleProfileResponse.fromMap((map['templateMappingRuleProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

