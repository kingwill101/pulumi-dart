// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_mapping_rule_profile_response.dart';

/// Azure Operator Distributed Services image deploy mapping rule profile.
class AzureOperatorNexusImageDeployMappingRuleProfileResponse {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The vhd mapping rule profile.
  final pulumi.Input<ImageMappingRuleProfileResponse>? imageMappingRuleProfile;

  /// Creates a new [AzureOperatorNexusImageDeployMappingRuleProfileResponse].
  /// [applicationEnablement] The application enablement.
  /// [imageMappingRuleProfile] The vhd mapping rule profile.
  AzureOperatorNexusImageDeployMappingRuleProfileResponse({
    this.applicationEnablement,
    this.imageMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'imageMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<ImageMappingRuleProfileResponse, Map<String, dynamic>>(imageMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureOperatorNexusImageDeployMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusImageDeployMappingRuleProfileResponse(
      applicationEnablement: (() { final guardedValue = map['applicationEnablement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageMappingRuleProfile: (() { final guardedValue = map['imageMappingRuleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageMappingRuleProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

