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
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? awsAccountRegion,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<String>? environmentBlueprintIdentifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<List<EnvironmentProfileUserParameter>>? userParameters,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      awsAccountRegion = pulumi.Input.asOptionalInput<String>(awsAccountRegion),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      environmentBlueprintIdentifier = pulumi.Input.asOptionalInput<String>(environmentBlueprintIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectIdentifier = pulumi.Input.asOptionalInput<String>(projectIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      userParameters = pulumi.Input.asOptionalInput<List<EnvironmentProfileUserParameter>>(userParameters);

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
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      awsAccountRegion: map['awsAccountRegion'] == null ? null : pulumi.Output.create<String>(map['awsAccountRegion'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      environmentBlueprintIdentifier: map['environmentBlueprintIdentifier'] == null ? null : pulumi.Output.create<String>(map['environmentBlueprintIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectIdentifier: map['projectIdentifier'] == null ? null : pulumi.Output.create<String>(map['projectIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      userParameters: map['userParameters'] == null ? null : pulumi.Output.create<List<EnvironmentProfileUserParameter>>(pulumi.Input.decodeList<EnvironmentProfileUserParameter>(map['userParameters'], (value) => EnvironmentProfileUserParameter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

