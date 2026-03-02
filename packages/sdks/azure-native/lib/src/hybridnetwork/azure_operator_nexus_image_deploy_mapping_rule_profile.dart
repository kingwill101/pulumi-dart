// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_mapping_rule_profile.dart';

/// Azure Operator Distributed Services image deploy mapping rule profile.
class AzureOperatorNexusImageDeployMappingRuleProfile {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The vhd mapping rule profile.
  final pulumi.Input<ImageMappingRuleProfile>? imageMappingRuleProfile;

  /// Creates a new [AzureOperatorNexusImageDeployMappingRuleProfile].
  /// [applicationEnablement] The application enablement.
  /// [imageMappingRuleProfile] The vhd mapping rule profile.
  AzureOperatorNexusImageDeployMappingRuleProfile({
    this.applicationEnablement,
    this.imageMappingRuleProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnablement': ?applicationEnablement,
      'imageMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<ImageMappingRuleProfile, Map<String, dynamic>>(imageMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureOperatorNexusImageDeployMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusImageDeployMappingRuleProfile(
      applicationEnablement: map['applicationEnablement'] == null ? null : (map['applicationEnablement'] as String).input(),
      imageMappingRuleProfile: map['imageMappingRuleProfile'] == null ? null : (ImageMappingRuleProfile.fromMap((map['imageMappingRuleProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

