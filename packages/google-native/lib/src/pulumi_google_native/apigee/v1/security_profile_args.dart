// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_profile_config.dart';
import 'google_cloud_apigee_v1_security_profile_scoring_config.dart';

/// The set of arguments for SecurityProfile.
class SecurityProfileArgs {
  /// Description of the security profile.
  final Input<String>? description;

  /// Display name of the security profile.
  final Input<String>? displayName;

  /// List of environments attached to security profile.
  final Input<List<Map<String, dynamic>>>? environments;

  /// Immutable. Name of the security profile resource. Format: organizations/{org}/securityProfiles/{profile}
  final Input<String>? name;
  final Input<String> organizationId;

  /// Customized profile configuration that computes the security score.
  final Input<GoogleCloudApigeeV1ProfileConfig> profileConfig;

  /// List of profile scoring configs in this revision.
  final Input<List<GoogleCloudApigeeV1SecurityProfileScoringConfig>>?
      scoringConfigs;

  /// Required. The ID to use for the SecurityProfile, which will become the final component of the action's resource name. This value should be 1-63 characters and validated by "(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$)".
  final Input<String> securityProfileId;

  SecurityProfileArgs({
    this.description,
    this.displayName,
    this.environments,
    this.name,
    required this.organizationId,
    required this.profileConfig,
    this.scoringConfigs,
    required this.securityProfileId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final environmentsValue = environments;
    if (environmentsValue != null) {
      map['environments'] = environmentsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['profileConfig'] = Input.mapInputValue<GoogleCloudApigeeV1ProfileConfig,
        Map<String, dynamic>>(profileConfig, (value) => value.toMap());
    final scoringConfigsValue = scoringConfigs;
    if (scoringConfigsValue != null) {
      map['scoringConfigs'] = Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1SecurityProfileScoringConfig>,
              List<Map<String, dynamic>>>(
          scoringConfigsValue,
          (value) => Input.encodeList<
              GoogleCloudApigeeV1SecurityProfileScoringConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['securityProfileId'] = securityProfileId;
    return map;
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      environments: Input.asOptionalInput<List<Map<String, dynamic>>>(
          map['environments']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      profileConfig:
          Input.asInput<GoogleCloudApigeeV1ProfileConfig>(map['profileConfig']),
      scoringConfigs: Input.asOptionalInput<
              List<GoogleCloudApigeeV1SecurityProfileScoringConfig>>(
          map['scoringConfigs']),
      securityProfileId: Input.asInput<String>(map['securityProfileId']),
    );
  }
}
