// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_profile_user_parameter/environment_profile_user_parameter.dart';

/// The set of arguments for EnvironmentProfile.
class EnvironmentProfileArgs {
  /// Id of the AWS account being used.
  final Input<String>? awsAccountId;

  /// Desired region for environment profile.
  final Input<String> awsAccountRegion;

  /// Description of environment profile.
  final Input<String>? description;

  /// Domain Identifier for environment profile.
  final Input<String> domainIdentifier;

  /// ID of the blueprint which the environment will be created with.
  final Input<String> environmentBlueprintIdentifier;

  /// Name of the environment profile.
  final Input<String>? name;

  /// Project identifier for environment profile.
  final Input<String> projectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Array of user parameters of the environment profile with the following attributes:
  final Input<List<EnvironmentProfileUserParameter>>? userParameters;

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
      map['userParameters'] = Input.mapOptionalInputValue<
              List<EnvironmentProfileUserParameter>,
              List<Map<String, dynamic>>>(
          userParametersValue,
          (value) => Input.encodeList<EnvironmentProfileUserParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory EnvironmentProfileArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentProfileArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      awsAccountRegion: Input.asInput<String>(map['awsAccountRegion']),
      description: Input.asOptionalInput<String>(map['description']),
      domainIdentifier: Input.asInput<String>(map['domainIdentifier']),
      environmentBlueprintIdentifier:
          Input.asInput<String>(map['environmentBlueprintIdentifier']),
      name: Input.asOptionalInput<String>(map['name']),
      projectIdentifier: Input.asInput<String>(map['projectIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      userParameters:
          Input.asOptionalInput<List<EnvironmentProfileUserParameter>>(
              map['userParameters']),
    );
  }
}
