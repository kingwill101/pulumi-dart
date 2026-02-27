// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_profile_config.dart';
import 'google_cloud_apigee_v1_security_profile_scoring_config.dart';

/// The set of arguments for SecurityProfile.
class SecurityProfileArgs {
  /// Description of the security profile.
  final pulumi.Input<String>? description;

  /// Display name of the security profile.
  final pulumi.Input<String>? displayName;

  /// List of environments attached to security profile.
  final pulumi.Input<List<Map<String, dynamic>>>? environments;

  /// Immutable. Name of the security profile resource. Format: organizations/{org}/securityProfiles/{profile}
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Customized profile configuration that computes the security score.
  final pulumi.Input<GoogleCloudApigeeV1ProfileConfig> profileConfig;

  /// List of profile scoring configs in this revision.
  final pulumi.Input<List<GoogleCloudApigeeV1SecurityProfileScoringConfig>>?
      scoringConfigs;

  /// Required. The ID to use for the SecurityProfile, which will become the final component of the action's resource name. This value should be 1-63 characters and validated by "(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$)".
  final pulumi.Input<String> securityProfileId;

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
    map['profileConfig'] = pulumi.Input.mapInputValue<
        GoogleCloudApigeeV1ProfileConfig,
        Map<String, dynamic>>(profileConfig, (value) => value.toMap());
    final scoringConfigsValue = scoringConfigs;
    if (scoringConfigsValue != null) {
      map['scoringConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1SecurityProfileScoringConfig>,
              List<Map<String, dynamic>>>(
          scoringConfigsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudApigeeV1SecurityProfileScoringConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['securityProfileId'] = securityProfileId;
    return map;
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      environments: pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
          map['environments']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      profileConfig: pulumi.Input.asInput<GoogleCloudApigeeV1ProfileConfig>(
          map['profileConfig']),
      scoringConfigs: pulumi.Input.asOptionalInput<
              List<GoogleCloudApigeeV1SecurityProfileScoringConfig>>(
          map['scoringConfigs']),
      securityProfileId: pulumi.Input.asInput<String>(map['securityProfileId']),
    );
  }
}
