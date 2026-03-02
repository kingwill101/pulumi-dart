// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vhd_image_mapping_rule_profile_response.dart';

/// Azure vhd deploy mapping rule profile.
class AzureCoreVhdImageDeployMappingRuleProfileResponse {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The vhd mapping rule profile.
  final pulumi.Input<VhdImageMappingRuleProfileResponse>? vhdImageMappingRuleProfile;

  /// Creates a new [AzureCoreVhdImageDeployMappingRuleProfileResponse].
  /// [applicationEnablement] The application enablement.
  /// [vhdImageMappingRuleProfile] The vhd mapping rule profile.
  AzureCoreVhdImageDeployMappingRuleProfileResponse({
    this.applicationEnablement,
    this.vhdImageMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'vhdImageMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<VhdImageMappingRuleProfileResponse, Map<String, dynamic>>(vhdImageMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureCoreVhdImageDeployMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreVhdImageDeployMappingRuleProfileResponse(
      applicationEnablement: map['applicationEnablement'] == null ? null : (map['applicationEnablement']! as String).input(),
      vhdImageMappingRuleProfile: map['vhdImageMappingRuleProfile'] == null ? null : (VhdImageMappingRuleProfileResponse.fromMap((map['vhdImageMappingRuleProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

