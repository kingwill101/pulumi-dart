// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_timeouts/environment_timeouts.dart';
import '../environment_user_parameter/environment_user_parameter.dart';

/// The set of arguments for Environment.
class EnvironmentDatazoneArgs {
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

  EnvironmentDatazoneArgs({
    this.accountIdentifier,
    this.accountRegion,
    this.blueprintIdentifier,
    this.description,
    required this.domainIdentifier,
    this.glossaryTerms,
    this.name,
    required this.profileIdentifier,
    required this.projectIdentifier,
    this.region,
    this.timeouts,
    this.userParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdentifierValue = accountIdentifier;
    if (accountIdentifierValue != null) {
      map['accountIdentifier'] = accountIdentifierValue;
    }
    final accountRegionValue = accountRegion;
    if (accountRegionValue != null) {
      map['accountRegion'] = accountRegionValue;
    }
    final blueprintIdentifierValue = blueprintIdentifier;
    if (blueprintIdentifierValue != null) {
      map['blueprintIdentifier'] = blueprintIdentifierValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainIdentifier'] = domainIdentifier;
    final glossaryTermsValue = glossaryTerms;
    if (glossaryTermsValue != null) {
      map['glossaryTerms'] = glossaryTermsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['profileIdentifier'] = profileIdentifier;
    map['projectIdentifier'] = projectIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<EnvironmentTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final userParametersValue = userParameters;
    if (userParametersValue != null) {
      map['userParameters'] = pulumi.Input.mapOptionalInputValue<
              List<EnvironmentUserParameter>, List<Map<String, dynamic>>>(
          userParametersValue,
          (value) => pulumi.Input.encodeList<EnvironmentUserParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory EnvironmentDatazoneArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentDatazoneArgs(
      accountIdentifier:
          pulumi.Input.asOptionalInput<String>(map['accountIdentifier']),
      accountRegion: pulumi.Input.asOptionalInput<String>(map['accountRegion']),
      blueprintIdentifier:
          pulumi.Input.asOptionalInput<String>(map['blueprintIdentifier']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainIdentifier: pulumi.Input.asInput<String>(map['domainIdentifier']),
      glossaryTerms:
          pulumi.Input.asOptionalInput<List<String>>(map['glossaryTerms']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      profileIdentifier: pulumi.Input.asInput<String>(map['profileIdentifier']),
      projectIdentifier: pulumi.Input.asInput<String>(map['projectIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<EnvironmentTimeouts>(map['timeouts']),
      userParameters:
          pulumi.Input.asOptionalInput<List<EnvironmentUserParameter>>(
              map['userParameters']),
    );
  }
}
