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
    pulumi.Output<String>? accountIdentifier,
    pulumi.Output<String>? accountRegion,
    pulumi.Output<String>? blueprintIdentifier,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<List<String>>? glossaryTerms,
    pulumi.Output<List<EnvironmentLastDeployment>>? lastDeployments,
    pulumi.Output<String>? name,
    pulumi.Output<String>? profileIdentifier,
    pulumi.Output<String>? projectIdentifier,
    pulumi.Output<String>? providerEnvironment,
    pulumi.Output<List<EnvironmentProvisionedResource>>? provisionedResources,
    pulumi.Output<String>? region,
    pulumi.Output<EnvironmentTimeouts>? timeouts,
    pulumi.Output<List<EnvironmentUserParameter>>? userParameters,
  }) :
      accountIdentifier = pulumi.Input.asOptionalInput<String>(accountIdentifier),
      accountRegion = pulumi.Input.asOptionalInput<String>(accountRegion),
      blueprintIdentifier = pulumi.Input.asOptionalInput<String>(blueprintIdentifier),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      glossaryTerms = pulumi.Input.asOptionalInput<List<String>>(glossaryTerms),
      lastDeployments = pulumi.Input.asOptionalInput<List<EnvironmentLastDeployment>>(lastDeployments),
      name = pulumi.Input.asOptionalInput<String>(name),
      profileIdentifier = pulumi.Input.asOptionalInput<String>(profileIdentifier),
      projectIdentifier = pulumi.Input.asOptionalInput<String>(projectIdentifier),
      providerEnvironment = pulumi.Input.asOptionalInput<String>(providerEnvironment),
      provisionedResources = pulumi.Input.asOptionalInput<List<EnvironmentProvisionedResource>>(provisionedResources),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<EnvironmentTimeouts>(timeouts),
      userParameters = pulumi.Input.asOptionalInput<List<EnvironmentUserParameter>>(userParameters);

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
      accountIdentifier: map['accountIdentifier'] == null ? null : pulumi.Output.create<String>(map['accountIdentifier'] as String),
      accountRegion: map['accountRegion'] == null ? null : pulumi.Output.create<String>(map['accountRegion'] as String),
      blueprintIdentifier: map['blueprintIdentifier'] == null ? null : pulumi.Output.create<String>(map['blueprintIdentifier'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      glossaryTerms: map['glossaryTerms'] == null ? null : pulumi.Output.create<List<String>>((map['glossaryTerms'] as List).cast<String>()),
      lastDeployments: map['lastDeployments'] == null ? null : pulumi.Output.create<List<EnvironmentLastDeployment>>(pulumi.Input.decodeList<EnvironmentLastDeployment>(map['lastDeployments'], (value) => EnvironmentLastDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      profileIdentifier: map['profileIdentifier'] == null ? null : pulumi.Output.create<String>(map['profileIdentifier'] as String),
      projectIdentifier: map['projectIdentifier'] == null ? null : pulumi.Output.create<String>(map['projectIdentifier'] as String),
      providerEnvironment: map['providerEnvironment'] == null ? null : pulumi.Output.create<String>(map['providerEnvironment'] as String),
      provisionedResources: map['provisionedResources'] == null ? null : pulumi.Output.create<List<EnvironmentProvisionedResource>>(pulumi.Input.decodeList<EnvironmentProvisionedResource>(map['provisionedResources'], (value) => EnvironmentProvisionedResource.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<EnvironmentTimeouts>(EnvironmentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      userParameters: map['userParameters'] == null ? null : pulumi.Output.create<List<EnvironmentUserParameter>>(pulumi.Input.decodeList<EnvironmentUserParameter>(map['userParameters'], (value) => EnvironmentUserParameter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

