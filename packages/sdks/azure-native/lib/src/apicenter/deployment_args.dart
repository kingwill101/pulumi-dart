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
    required this.apiName,
    this.customProperties,
    this.definitionId,
    this.deploymentName,
    this.description,
    this.environmentId,
    required this.resourceGroupName,
    this.server,
    required this.serviceName,
    this.state,
    this.title,
    required this.workspaceName,
  });

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
      apiName: (map['apiName'] as String).input(),
      customProperties: map['customProperties'] == null ? null : (map['customProperties']!).input(),
      definitionId: map['definitionId'] == null ? null : (map['definitionId']! as String).input(),
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      server: map['server'] == null ? null : (DeploymentServer.fromMap((map['server']! as Map).cast<String, dynamic>())).input(),
      serviceName: (map['serviceName'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

