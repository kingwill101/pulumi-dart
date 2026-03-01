// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_timeouts.dart';
import 'environment_user_parameter.dart';

/// {@template pulumi_datazone_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_datazone_environment_environment_args_doc}
class EnvironmentArgs {
  /// The ID of the Amazon Web Services account where the environment exists
  final pulumi.Input<String>? accountIdentifier;

  /// The Amazon Web Services region where the environment exists.
  final pulumi.Input<String>? accountRegion;

  /// The blueprint with which the environment is created.
  final pulumi.Input<String>? blueprintIdentifier;

  /// The description of the environment.
  final pulumi.Input<String>? description;

  /// The ID of the domain where the environment exists.
  final pulumi.Input<String> domainIdentifier;

  /// The business glossary terms that can be used in this environment.
  final pulumi.Input<List<String>>? glossaryTerms;

  /// The name of the environment.
  final pulumi.Input<String>? name;

  /// The ID of the profile with which the environment is created.
  final pulumi.Input<String> profileIdentifier;

  /// The ID of the project where the environment exists.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> projectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<EnvironmentTimeouts>? timeouts;

  /// The user parameters that are used in the environment.
  /// See User Parameters for more information.
  /// Changing these values recreates the resource.
  final pulumi.Input<List<EnvironmentUserParameter>>? userParameters;

  /// Creates a new [EnvironmentArgs].
  /// [accountIdentifier] The ID of the Amazon Web Services account where the environment exists
  /// [accountRegion] The Amazon Web Services region where the environment exists.
  /// [blueprintIdentifier] The blueprint with which the environment is created.
  /// [description] The description of the environment.
  /// [domainIdentifier] The ID of the domain where the environment exists.
  /// [glossaryTerms] The business glossary terms that can be used in this environment.
  /// [name] The name of the environment.
  /// [profileIdentifier] The ID of the profile with which the environment is created.
  /// [projectIdentifier] The ID of the project where the environment exists.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [userParameters] The user parameters that are used in the environment.
  EnvironmentArgs({
    String? accountIdentifier,
    String? accountRegion,
    String? blueprintIdentifier,
    String? description,
    required String domainIdentifier,
    List<String>? glossaryTerms,
    String? name,
    required String profileIdentifier,
    required String projectIdentifier,
    String? region,
    EnvironmentTimeouts? timeouts,
    List<EnvironmentUserParameter>? userParameters,
  }) : accountIdentifier = pulumi.Input.asOptionalInput<String>(
         accountIdentifier,
       ),
       accountRegion = pulumi.Input.asOptionalInput<String>(accountRegion),
       blueprintIdentifier = pulumi.Input.asOptionalInput<String>(
         blueprintIdentifier,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
       glossaryTerms = pulumi.Input.asOptionalInput<List<String>>(
         glossaryTerms,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       profileIdentifier = pulumi.Input.asInput<String>(profileIdentifier),
       projectIdentifier = pulumi.Input.asInput<String>(projectIdentifier),
       region = pulumi.Input.asOptionalInput<String>(region),
       timeouts = pulumi.Input.asOptionalInput<EnvironmentTimeouts>(timeouts),
       userParameters =
           pulumi.Input.asOptionalInput<List<EnvironmentUserParameter>>(
             userParameters,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIdentifier': ?accountIdentifier,
      'accountRegion': ?accountRegion,
      'blueprintIdentifier': ?blueprintIdentifier,
      'description': ?description,
      'domainIdentifier': domainIdentifier,
      'glossaryTerms': ?glossaryTerms,
      'name': ?name,
      'profileIdentifier': profileIdentifier,
      'projectIdentifier': projectIdentifier,
      'region': ?region,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'userParameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnvironmentUserParameter>,
            List<Map<String, dynamic>>
          >(
            userParameters,
            (value) =>
                pulumi.Input.encodeList<
                  EnvironmentUserParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      accountIdentifier: map['accountIdentifier'] == null
          ? null
          : map['accountIdentifier'] as String,
      accountRegion: map['accountRegion'] == null
          ? null
          : map['accountRegion'] as String,
      blueprintIdentifier: map['blueprintIdentifier'] == null
          ? null
          : map['blueprintIdentifier'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      domainIdentifier: map['domainIdentifier'] as String,
      glossaryTerms: map['glossaryTerms'] == null
          ? null
          : (map['glossaryTerms'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      profileIdentifier: map['profileIdentifier'] as String,
      projectIdentifier: map['projectIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : EnvironmentTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      userParameters: map['userParameters'] == null
          ? null
          : pulumi.Input.decodeList<EnvironmentUserParameter>(
              map['userParameters'],
              (value) => EnvironmentUserParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
