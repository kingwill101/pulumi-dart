// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_profile_config.dart';
import 'google_cloud_apigee_v1_security_profile_scoring_config.dart';

/// {@template pulumi_apigee_v1_security_profile_args_doc}
/// The set of arguments for SecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_security_profile_args_doc}
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

  /// Creates a new [SecurityProfileArgs].
  /// [description] Description of the security profile.
  /// [displayName] Display name of the security profile.
  /// [environments] List of environments attached to security profile.
  /// [name] Immutable. Name of the security profile resource. Format: organizations/{org}/securityProfiles/{profile}
  /// [organizationId] Required.
  /// [profileConfig] Customized profile configuration that computes the security score.
  /// [scoringConfigs] List of profile scoring configs in this revision.
  /// [securityProfileId] Required. The ID to use for the SecurityProfile, which will become the final component of the action's resource name. This value should be 1-63 characters and validated by "(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$)".
  SecurityProfileArgs({
    String? description,
    String? displayName,
    List<Map<String, dynamic>>? environments,
    String? name,
    required String organizationId,
    required GoogleCloudApigeeV1ProfileConfig profileConfig,
    List<GoogleCloudApigeeV1SecurityProfileScoringConfig>? scoringConfigs,
    required String securityProfileId,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       environments = pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
         environments,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       profileConfig = pulumi.Input.asInput<GoogleCloudApigeeV1ProfileConfig>(
         profileConfig,
       ),
       scoringConfigs =
           pulumi.Input.asOptionalInput<
             List<GoogleCloudApigeeV1SecurityProfileScoringConfig>
           >(scoringConfigs),
       securityProfileId = pulumi.Input.asInput<String>(securityProfileId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'environments': ?environments,
      'name': ?name,
      'organizationId': organizationId,
      'profileConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudApigeeV1ProfileConfig,
            Map<String, dynamic>
          >(profileConfig, (value) => value.toMap()),
      'scoringConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudApigeeV1SecurityProfileScoringConfig>,
            List<Map<String, dynamic>>
          >(
            scoringConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1SecurityProfileScoringConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securityProfileId': securityProfileId,
    };
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      environments: map['environments'] == null
          ? null
          : (map['environments'] as List).cast<Map<String, dynamic>>(),
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      profileConfig: GoogleCloudApigeeV1ProfileConfig.fromMap(
        (map['profileConfig'] as Map).cast<String, dynamic>(),
      ),
      scoringConfigs: map['scoringConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudApigeeV1SecurityProfileScoringConfig
            >(
              map['scoringConfigs'],
              (value) =>
                  GoogleCloudApigeeV1SecurityProfileScoringConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      securityProfileId: map['securityProfileId'] as String,
    );
  }
}
