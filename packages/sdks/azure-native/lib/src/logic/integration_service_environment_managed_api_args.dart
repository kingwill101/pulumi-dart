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
  const IntegrationServiceEnvironmentManagedApiArgs({
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
      apiName: (() { final guardedValue = map['apiName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentParameters: (() { final guardedValue = map['deploymentParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationServiceEnvironmentManagedApiDeploymentParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationServiceEnvironment: (() { final guardedValue = map['integrationServiceEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationServiceEnvironmentName: pulumi.Input.fromValue(map['integrationServiceEnvironmentName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
