// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_last_deployment.dart';
import 'environment_provisioned_resource.dart';
import 'environment_timeouts.dart';
import 'environment_user_parameter.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// The ID of the Amazon Web Services account where the environment exists
  final pulumi.Input<String>? accountIdentifier;
  /// The Amazon Web Services region where the environment exists.
  final pulumi.Input<String>? accountRegion;
  /// The blueprint with which the environment is created.
  final pulumi.Input<String>? blueprintIdentifier;
  /// The time the environment was created.
  final pulumi.Input<String>? createdAt;
  /// The user who created the environment.
  final pulumi.Input<String>? createdBy;
  /// The description of the environment.
  final pulumi.Input<String>? description;
  /// The ID of the domain where the environment exists.
  final pulumi.Input<String>? domainIdentifier;
  /// The business glossary terms that can be used in this environment.
  final pulumi.Input<List<String>>? glossaryTerms;
  /// The details of the last deployment of the environment.
  final pulumi.Input<List<EnvironmentLastDeployment>>? lastDeployments;
  /// The name of the environment.
  final pulumi.Input<String>? name;
  /// The ID of the profile with which the environment is created.
  final pulumi.Input<String>? profileIdentifier;
  /// The ID of the project where the environment exists.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? projectIdentifier;
  /// The provider of the environment.
  final pulumi.Input<String>? providerEnvironment;
  final pulumi.Input<List<EnvironmentProvisionedResource>>? provisionedResources;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<EnvironmentTimeouts>? timeouts;
  /// The user parameters that are used in the environment.
  /// See User Parameters for more information.
  /// Changing these values recreates the resource.
  final pulumi.Input<List<EnvironmentUserParameter>>? userParameters;

  /// Creates a new [EnvironmentState].
  /// [accountIdentifier] The ID of the Amazon Web Services account where the environment exists
  /// [accountRegion] The Amazon Web Services region where the environment exists.
  /// [blueprintIdentifier] The blueprint with which the environment is created.
  /// [createdAt] The time the environment was created.
  /// [createdBy] The user who created the environment.
  /// [description] The description of the environment.
  /// [domainIdentifier] The ID of the domain where the environment exists.
  /// [glossaryTerms] The business glossary terms that can be used in this environment.
  /// [lastDeployments] The details of the last deployment of the environment.
  /// [name] The name of the environment.
  /// [profileIdentifier] The ID of the profile with which the environment is created.
  /// [projectIdentifier] The ID of the project where the environment exists.
  /// [providerEnvironment] The provider of the environment.
  /// [provisionedResources] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [userParameters] The user parameters that are used in the environment.
  EnvironmentState({
    this.accountIdentifier,
    this.accountRegion,
    this.blueprintIdentifier,
    this.createdAt,
    this.createdBy,
    this.description,
    this.domainIdentifier,
    this.glossaryTerms,
    this.lastDeployments,
    this.name,
    this.profileIdentifier,
    this.projectIdentifier,
    this.providerEnvironment,
    this.provisionedResources,
    this.region,
    this.timeouts,
    this.userParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIdentifier': ?accountIdentifier,
      'accountRegion': ?accountRegion,
      'blueprintIdentifier': ?blueprintIdentifier,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'domainIdentifier': ?domainIdentifier,
      'glossaryTerms': ?glossaryTerms,
      'lastDeployments': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentLastDeployment>, List<Map<String, dynamic>>>(lastDeployments, (value) => pulumi.Input.encodeList<EnvironmentLastDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'profileIdentifier': ?profileIdentifier,
      'projectIdentifier': ?projectIdentifier,
      'providerEnvironment': ?providerEnvironment,
      'provisionedResources': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentProvisionedResource>, List<Map<String, dynamic>>>(provisionedResources, (value) => pulumi.Input.encodeList<EnvironmentProvisionedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EnvironmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'userParameters': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentUserParameter>, List<Map<String, dynamic>>>(userParameters, (value) => pulumi.Input.encodeList<EnvironmentUserParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      accountIdentifier: map['accountIdentifier'] == null ? null : (map['accountIdentifier'] as String).input(),
      accountRegion: map['accountRegion'] == null ? null : (map['accountRegion'] as String).input(),
      blueprintIdentifier: map['blueprintIdentifier'] == null ? null : (map['blueprintIdentifier'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      domainIdentifier: map['domainIdentifier'] == null ? null : (map['domainIdentifier'] as String).input(),
      glossaryTerms: map['glossaryTerms'] == null ? null : ((map['glossaryTerms'] as List).cast<String>()).input(),
      lastDeployments: map['lastDeployments'] == null ? null : (pulumi.Input.decodeList<EnvironmentLastDeployment>(map['lastDeployments'], (value) => EnvironmentLastDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      profileIdentifier: map['profileIdentifier'] == null ? null : (map['profileIdentifier'] as String).input(),
      projectIdentifier: map['projectIdentifier'] == null ? null : (map['projectIdentifier'] as String).input(),
      providerEnvironment: map['providerEnvironment'] == null ? null : (map['providerEnvironment'] as String).input(),
      provisionedResources: map['provisionedResources'] == null ? null : (pulumi.Input.decodeList<EnvironmentProvisionedResource>(map['provisionedResources'], (value) => EnvironmentProvisionedResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (EnvironmentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      userParameters: map['userParameters'] == null ? null : (pulumi.Input.decodeList<EnvironmentUserParameter>(map['userParameters'], (value) => EnvironmentUserParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

