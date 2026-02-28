// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_profile_user_parameter.dart';

/// {@template pulumi_datazone_environment_profile_environment_profile_args_doc}
/// The set of arguments for EnvironmentProfile.
/// {@endtemplate}
/// {@macro pulumi_datazone_environment_profile_environment_profile_args_doc}
class EnvironmentProfileArgs {
  /// Id of the AWS account being used.
  final pulumi.Input<String>? awsAccountId;

  /// Desired region for environment profile.
  final pulumi.Input<String> awsAccountRegion;

  /// Description of environment profile.
  final pulumi.Input<String>? description;

  /// Domain Identifier for environment profile.
  final pulumi.Input<String> domainIdentifier;

  /// ID of the blueprint which the environment will be created with.
  final pulumi.Input<String> environmentBlueprintIdentifier;

  /// Name of the environment profile.
  final pulumi.Input<String>? name;

  /// Project identifier for environment profile.
  final pulumi.Input<String> projectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Array of user parameters of the environment profile with the following attributes:
  final pulumi.Input<List<EnvironmentProfileUserParameter>>? userParameters;

  /// Creates a new [EnvironmentProfileArgs].
  /// [awsAccountId] Id of the AWS account being used.
  /// [awsAccountRegion] Desired region for environment profile.
  /// [description] Description of environment profile.
  /// [domainIdentifier] Domain Identifier for environment profile.
  /// [environmentBlueprintIdentifier] ID of the blueprint which the environment will be created with.
  /// [name] Name of the environment profile.
  /// [projectIdentifier] Project identifier for environment profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userParameters] Array of user parameters of the environment profile with the following attributes:
  EnvironmentProfileArgs({
    String? awsAccountId,
    required String awsAccountRegion,
    String? description,
    required String domainIdentifier,
    required String environmentBlueprintIdentifier,
    String? name,
    required String projectIdentifier,
    String? region,
    List<EnvironmentProfileUserParameter>? userParameters,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        awsAccountRegion = pulumi.Input.asInput<String>(awsAccountRegion),
        description = pulumi.Input.asOptionalInput<String>(description),
        domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
        environmentBlueprintIdentifier =
            pulumi.Input.asInput<String>(environmentBlueprintIdentifier),
        name = pulumi.Input.asOptionalInput<String>(name),
        projectIdentifier = pulumi.Input.asInput<String>(projectIdentifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        userParameters =
            pulumi.Input.asOptionalInput<List<EnvironmentProfileUserParameter>>(
                userParameters);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['awsAccountRegion'] = awsAccountRegion;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainIdentifier'] = domainIdentifier;
    map['environmentBlueprintIdentifier'] = environmentBlueprintIdentifier;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['projectIdentifier'] = projectIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final userParametersValue = userParameters;
    if (userParametersValue != null) {
      map['userParameters'] = pulumi.Input.mapOptionalInputValue<
              List<EnvironmentProfileUserParameter>,
              List<Map<String, dynamic>>>(
          userParametersValue,
          (value) => pulumi.Input.encodeList<EnvironmentProfileUserParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory EnvironmentProfileArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentProfileArgs(
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      awsAccountRegion: map['awsAccountRegion'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      domainIdentifier: map['domainIdentifier'] as String,
      environmentBlueprintIdentifier:
          map['environmentBlueprintIdentifier'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      projectIdentifier: map['projectIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userParameters: map['userParameters'] == null
          ? null
          : pulumi.Input.decodeList<EnvironmentProfileUserParameter>(
              map['userParameters'],
              (value) => EnvironmentProfileUserParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
