// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_mapping_rule_profile_response.dart';

/// Azure template deploy mapping rule profile.
class AzureCoreArmTemplateDeployMappingRuleProfileResponse {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The template mapping rule profile.
  final pulumi.Input<ArmTemplateMappingRuleProfileResponse>? templateMappingRuleProfile;

  /// Creates a new [AzureCoreArmTemplateDeployMappingRuleProfileResponse].
  /// [applicationEnablement] The application enablement.
  /// [templateMappingRuleProfile] The template mapping rule profile.
  const AzureCoreArmTemplateDeployMappingRuleProfileResponse({
    this.applicationEnablement,
    this.templateMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'templateMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<ArmTemplateMappingRuleProfileResponse, Map<String, dynamic>>(templateMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureCoreArmTemplateDeployMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreArmTemplateDeployMappingRuleProfileResponse(
      applicationEnablement: (() { final guardedValue = map['applicationEnablement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateMappingRuleProfile: (() { final guardedValue = map['templateMappingRuleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmTemplateMappingRuleProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

