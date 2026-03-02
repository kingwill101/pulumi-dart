// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_profile_user_parameter.dart';

/// Input properties used for looking up and filtering EnvironmentProfile resources.
class EnvironmentProfileState {
  /// Id of the AWS account being used.
  final pulumi.Input<String>? awsAccountId;
  /// Desired region for environment profile.
  final pulumi.Input<String>? awsAccountRegion;
  /// Creation time of environment profile.
  final pulumi.Input<String>? createdAt;
  /// Creator of environment profile.
  final pulumi.Input<String>? createdBy;
  /// Description of environment profile.
  final pulumi.Input<String>? description;
  /// Domain Identifier for environment profile.
  final pulumi.Input<String>? domainIdentifier;
  /// ID of the blueprint which the environment will be created with.
  final pulumi.Input<String>? environmentBlueprintIdentifier;
  /// Name of the environment profile.
  final pulumi.Input<String>? name;
  /// Project identifier for environment profile.
  final pulumi.Input<String>? projectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Time of last update to environment profile.
  final pulumi.Input<String>? updatedAt;
  /// Array of user parameters of the environment profile with the following attributes:
  final pulumi.Input<List<EnvironmentProfileUserParameter>>? userParameters;

  /// Creates a new [EnvironmentProfileState].
  /// [awsAccountId] Id of the AWS account being used.
  /// [awsAccountRegion] Desired region for environment profile.
  /// [createdAt] Creation time of environment profile.
  /// [createdBy] Creator of environment profile.
  /// [description] Description of environment profile.
  /// [domainIdentifier] Domain Identifier for environment profile.
  /// [environmentBlueprintIdentifier] ID of the blueprint which the environment will be created with.
  /// [name] Name of the environment profile.
  /// [projectIdentifier] Project identifier for environment profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [updatedAt] Time of last update to environment profile.
  /// [userParameters] Array of user parameters of the environment profile with the following attributes:
  EnvironmentProfileState({
    this.awsAccountId,
    this.awsAccountRegion,
    this.createdAt,
    this.createdBy,
    this.description,
    this.domainIdentifier,
    this.environmentBlueprintIdentifier,
    this.name,
    this.projectIdentifier,
    this.region,
    this.updatedAt,
    this.userParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'awsAccountRegion': ?awsAccountRegion,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'domainIdentifier': ?domainIdentifier,
      'environmentBlueprintIdentifier': ?environmentBlueprintIdentifier,
      'name': ?name,
      'projectIdentifier': ?projectIdentifier,
      'region': ?region,
      'updatedAt': ?updatedAt,
      'userParameters': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentProfileUserParameter>, List<Map<String, dynamic>>>(userParameters, (value) => pulumi.Input.encodeList<EnvironmentProfileUserParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentProfileState.fromMap(Map<String, dynamic> map) {
    return EnvironmentProfileState(
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      awsAccountRegion: map['awsAccountRegion'] == null ? null : ((map['awsAccountRegion'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      createdBy: map['createdBy'] == null ? null : ((map['createdBy'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      domainIdentifier: map['domainIdentifier'] == null ? null : ((map['domainIdentifier'] as String).input()).input(),
      environmentBlueprintIdentifier: map['environmentBlueprintIdentifier'] == null ? null : ((map['environmentBlueprintIdentifier'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      projectIdentifier: map['projectIdentifier'] == null ? null : ((map['projectIdentifier'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
      userParameters: map['userParameters'] == null ? null : ((pulumi.Input.decodeList<EnvironmentProfileUserParameter>(map['userParameters']!, (value) => EnvironmentProfileUserParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

