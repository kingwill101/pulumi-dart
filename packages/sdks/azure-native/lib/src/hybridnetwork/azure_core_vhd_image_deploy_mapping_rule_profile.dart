// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vhd_image_mapping_rule_profile.dart';

/// Azure vhd deploy mapping rule profile.
class AzureCoreVhdImageDeployMappingRuleProfile {
  /// The application enablement.
  final pulumi.Input<String>? applicationEnablement;
  /// The vhd mapping rule profile.
  final pulumi.Input<VhdImageMappingRuleProfile>? vhdImageMappingRuleProfile;

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
      'vhdImageMappingRuleProfile': ?pulumi.Input.mapOptionalInputValue<VhdImageMappingRuleProfile, Map<String, dynamic>>(vhdImageMappingRuleProfile, (value) => value.toMap()),
    };
  }

  factory AzureCoreVhdImageDeployMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return AzureCoreVhdImageDeployMappingRuleProfile(
      applicationEnablement: (() { final guardedValue = map['applicationEnablement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhdImageMappingRuleProfile: (() { final guardedValue = map['vhdImageMappingRuleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VhdImageMappingRuleProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

