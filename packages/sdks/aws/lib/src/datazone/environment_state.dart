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
  const EnvironmentState({
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
      accountIdentifier: (() { final guardedValue = map['accountIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountRegion: (() { final guardedValue = map['accountRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blueprintIdentifier: (() { final guardedValue = map['blueprintIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainIdentifier: (() { final guardedValue = map['domainIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glossaryTerms: (() { final guardedValue = map['glossaryTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastDeployments: (() { final guardedValue = map['lastDeployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentLastDeployment>(guardedValue, (value) => EnvironmentLastDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileIdentifier: (() { final guardedValue = map['profileIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectIdentifier: (() { final guardedValue = map['projectIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerEnvironment: (() { final guardedValue = map['providerEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedResources: (() { final guardedValue = map['provisionedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentProvisionedResource>(guardedValue, (value) => EnvironmentProvisionedResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userParameters: (() { final guardedValue = map['userParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentUserParameter>(guardedValue, (value) => EnvironmentUserParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

