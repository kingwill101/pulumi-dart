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
    this.awsAccountId,
    required this.awsAccountRegion,
    this.description,
    required this.domainIdentifier,
    required this.environmentBlueprintIdentifier,
    this.name,
    required this.projectIdentifier,
    this.region,
    this.userParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'awsAccountRegion': awsAccountRegion,
      'description': ?description,
      'domainIdentifier': domainIdentifier,
      'environmentBlueprintIdentifier': environmentBlueprintIdentifier,
      'name': ?name,
      'projectIdentifier': projectIdentifier,
      'region': ?region,
      'userParameters': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentProfileUserParameter>, List<Map<String, dynamic>>>(userParameters, (value) => pulumi.Input.encodeList<EnvironmentProfileUserParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentProfileArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentProfileArgs(
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      awsAccountRegion: (map['awsAccountRegion'] as String).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      domainIdentifier: (map['domainIdentifier'] as String).input(),
      environmentBlueprintIdentifier: (map['environmentBlueprintIdentifier'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      projectIdentifier: (map['projectIdentifier'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      userParameters: map['userParameters'] == null ? null : ((pulumi.Input.decodeList<EnvironmentProfileUserParameter>(map['userParameters']!, (value) => EnvironmentProfileUserParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

