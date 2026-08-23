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
  const EnvironmentProfileState({
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
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountRegion: (() { final guardedValue = map['awsAccountRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainIdentifier: (() { final guardedValue = map['domainIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentBlueprintIdentifier: (() { final guardedValue = map['environmentBlueprintIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectIdentifier: (() { final guardedValue = map['projectIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userParameters: (() { final guardedValue = map['userParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentProfileUserParameter>(guardedValue, (value) => EnvironmentProfileUserParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
