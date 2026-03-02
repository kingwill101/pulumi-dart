// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environment_managed_api_deployment_parameters.dart';
import 'resource_reference.dart';

/// {@template pulumi_logic_integration_service_environment_managed_api_args_doc}
/// The set of arguments for IntegrationServiceEnvironmentManagedApi.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_service_environment_managed_api_args_doc}
class IntegrationServiceEnvironmentManagedApiArgs {
  /// The api name.
  final pulumi.Input<String>? apiName;
  /// The integration service environment managed api deployment parameters.
  final pulumi.Input<IntegrationServiceEnvironmentManagedApiDeploymentParameters>? deploymentParameters;
  /// The integration service environment reference.
  final pulumi.Input<ResourceReference>? integrationServiceEnvironment;
  /// The integration service environment name.
  final pulumi.Input<String> integrationServiceEnvironmentName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The resource group name.
  final pulumi.Input<String> resourceGroup;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationServiceEnvironmentManagedApiArgs].
  /// [apiName] The api name.
  /// [deploymentParameters] The integration service environment managed api deployment parameters.
  /// [integrationServiceEnvironment] The integration service environment reference.
  /// [integrationServiceEnvironmentName] The integration service environment name.
  /// [location] The resource location.
  /// [resourceGroup] The resource group name.
  /// [tags] The resource tags.
  IntegrationServiceEnvironmentManagedApiArgs({
    this.apiName,
    this.deploymentParameters,
    this.integrationServiceEnvironment,
    required this.integrationServiceEnvironmentName,
    this.location,
    required this.resourceGroup,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': ?apiName,
      'deploymentParameters': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmentManagedApiDeploymentParameters, Map<String, dynamic>>(deploymentParameters, (value) => value.toMap()),
      'integrationServiceEnvironment': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(integrationServiceEnvironment, (value) => value.toMap()),
      'integrationServiceEnvironmentName': integrationServiceEnvironmentName,
      'location': ?location,
      'resourceGroup': resourceGroup,
      'tags': ?tags,
    };
  }

  factory IntegrationServiceEnvironmentManagedApiArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentManagedApiArgs(
      apiName: map['apiName'] == null ? null : (map['apiName'] as String).input(),
      deploymentParameters: map['deploymentParameters'] == null ? null : (IntegrationServiceEnvironmentManagedApiDeploymentParameters.fromMap((map['deploymentParameters'] as Map).cast<String, dynamic>())).input(),
      integrationServiceEnvironment: map['integrationServiceEnvironment'] == null ? null : (ResourceReference.fromMap((map['integrationServiceEnvironment'] as Map).cast<String, dynamic>())).input(),
      integrationServiceEnvironmentName: (map['integrationServiceEnvironmentName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

