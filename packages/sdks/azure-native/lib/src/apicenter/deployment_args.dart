// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_server.dart';

/// {@template pulumi_apicenter_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_apicenter_deployment_args_doc}
class DeploymentArgs {
  /// The name of the API.
  final pulumi.Input<String> apiName;
  /// The custom metadata defined for API catalog entities.
  final pulumi.Input<dynamic>? customProperties;
  /// API center-scoped definition resource ID.
  final pulumi.Input<String>? definitionId;
  /// The name of the API deployment.
  final pulumi.Input<String>? deploymentName;
  /// Description of the deployment.
  final pulumi.Input<String>? description;
  /// API center-scoped environment resource ID.
  final pulumi.Input<String>? environmentId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The deployment server
  final pulumi.Input<DeploymentServer>? server;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// State of API deployment.
  final pulumi.Input<String>? state;
  /// API deployment title
  final pulumi.Input<String>? title;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DeploymentArgs].
  /// [apiName] The name of the API.
  /// [customProperties] The custom metadata defined for API catalog entities.
  /// [definitionId] API center-scoped definition resource ID.
  /// [deploymentName] The name of the API deployment.
  /// [description] Description of the deployment.
  /// [environmentId] API center-scoped environment resource ID.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [server] The deployment server
  /// [serviceName] The name of Azure API Center service.
  /// [state] State of API deployment.
  /// [title] API deployment title
  /// [workspaceName] The name of the workspace.
  DeploymentArgs({
    required pulumi.Output<String> apiName,
    pulumi.Output<dynamic>? customProperties,
    pulumi.Output<String>? definitionId,
    pulumi.Output<String>? deploymentName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<DeploymentServer>? server,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? state,
    pulumi.Output<String>? title,
    required pulumi.Output<String> workspaceName,
  }) :
      apiName = pulumi.Input.asInput<String>(apiName),
      customProperties = pulumi.Input.asOptionalInput<dynamic>(customProperties),
      definitionId = pulumi.Input.asOptionalInput<String>(definitionId),
      deploymentName = pulumi.Input.asOptionalInput<String>(deploymentName),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      server = pulumi.Input.asOptionalInput<DeploymentServer>(server),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      state = pulumi.Input.asOptionalInput<String>(state),
      title = pulumi.Input.asOptionalInput<String>(title),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'customProperties': ?customProperties,
      'definitionId': ?definitionId,
      'deploymentName': ?deploymentName,
      'description': ?description,
      'environmentId': ?environmentId,
      'resourceGroupName': resourceGroupName,
      'server': ?pulumi.Input.mapOptionalInputValue<DeploymentServer, Map<String, dynamic>>(server, (value) => value.toMap()),
      'serviceName': serviceName,
      'state': ?state,
      'title': ?title,
      'workspaceName': workspaceName,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      apiName: pulumi.Output.create<String>(map['apiName'] as String),
      customProperties: map['customProperties'] == null ? null : pulumi.Output.create<dynamic>(map['customProperties']),
      definitionId: map['definitionId'] == null ? null : pulumi.Output.create<String>(map['definitionId'] as String),
      deploymentName: map['deploymentName'] == null ? null : pulumi.Output.create<String>(map['deploymentName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      server: map['server'] == null ? null : pulumi.Output.create<DeploymentServer>(DeploymentServer.fromMap((map['server'] as Map).cast<String, dynamic>())),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

