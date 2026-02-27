// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_profile_v2_profile_assessment_config/security_profile_v2_profile_assessment_config.dart';

/// The set of arguments for SecurityProfileV2.
class SecurityProfileV2Args {
  /// Description of the security profile.
  final pulumi.Input<String>? description;

  /// The Apigee Organization associated with the Apigee Security Profile V2,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// A map of the assessment name and the assessment config.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityProfileV2ProfileAssessmentConfig>>
      profileAssessmentConfigs;

  /// Resource ID of the security profile.
  final pulumi.Input<String> profileId;

  SecurityProfileV2Args({
    this.description,
    required this.orgId,
    required this.profileAssessmentConfigs,
    required this.profileId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['orgId'] = orgId;
    map['profileAssessmentConfigs'] = pulumi.Input.mapInputValue<
            List<SecurityProfileV2ProfileAssessmentConfig>,
            List<Map<String, dynamic>>>(
        profileAssessmentConfigs,
        (value) => pulumi.Input.encodeList<
            SecurityProfileV2ProfileAssessmentConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['profileId'] = profileId;
    return map;
  }

  factory SecurityProfileV2Args.fromMap(Map<String, dynamic> map) {
    return SecurityProfileV2Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      profileAssessmentConfigs:
          pulumi.Input.asInput<List<SecurityProfileV2ProfileAssessmentConfig>>(
              map['profileAssessmentConfigs']),
      profileId: pulumi.Input.asInput<String>(map['profileId']),
    );
  }
}
