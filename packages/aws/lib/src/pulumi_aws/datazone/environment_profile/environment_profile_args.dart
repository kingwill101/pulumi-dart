// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_profile_user_parameter/environment_profile_user_parameter.dart';

/// The set of arguments for EnvironmentProfile.
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
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      awsAccountRegion: pulumi.Input.asInput<String>(map['awsAccountRegion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainIdentifier: pulumi.Input.asInput<String>(map['domainIdentifier']),
      environmentBlueprintIdentifier:
          pulumi.Input.asInput<String>(map['environmentBlueprintIdentifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      projectIdentifier: pulumi.Input.asInput<String>(map['projectIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userParameters:
          pulumi.Input.asOptionalInput<List<EnvironmentProfileUserParameter>>(
              map['userParameters']),
    );
  }
}
