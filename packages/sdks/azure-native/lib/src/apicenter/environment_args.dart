// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_server.dart';
import 'onboarding.dart';

/// {@template pulumi_apicenter_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_apicenter_environment_args_doc}
class EnvironmentArgs {
  /// The custom metadata defined for API catalog entities.
  final pulumi.Input<dynamic>? customProperties;
  /// The environment description.
  final pulumi.Input<String>? description;
  /// The name of the environment.
  final pulumi.Input<String>? environmentName;
  /// Environment kind.
  final pulumi.Input<String> kind;
  /// Environment onboarding information
  final pulumi.Input<Onboarding>? onboarding;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Server information of the environment.
  final pulumi.Input<EnvironmentServer>? server;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// Environment title.
  final pulumi.Input<String> title;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EnvironmentArgs].
  /// [customProperties] The custom metadata defined for API catalog entities.
  /// [description] The environment description.
  /// [environmentName] The name of the environment.
  /// [kind] Environment kind.
  /// [onboarding] Environment onboarding information
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [server] Server information of the environment.
  /// [serviceName] The name of Azure API Center service.
  /// [title] Environment title.
  /// [workspaceName] The name of the workspace.
  EnvironmentArgs({
    pulumi.Output<dynamic>? customProperties,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentName,
    required pulumi.Output<String> kind,
    pulumi.Output<Onboarding>? onboarding,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<EnvironmentServer>? server,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> title,
    required pulumi.Output<String> workspaceName,
  }) :
      customProperties = pulumi.Input.asOptionalInput<dynamic>(customProperties),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentName = pulumi.Input.asOptionalInput<String>(environmentName),
      kind = pulumi.Input.asInput<String>(kind),
      onboarding = pulumi.Input.asOptionalInput<Onboarding>(onboarding),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      server = pulumi.Input.asOptionalInput<EnvironmentServer>(server),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      title = pulumi.Input.asInput<String>(title),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': ?customProperties,
      'description': ?description,
      'environmentName': ?environmentName,
      'kind': kind,
      'onboarding': ?pulumi.Input.mapOptionalInputValue<Onboarding, Map<String, dynamic>>(onboarding, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'server': ?pulumi.Input.mapOptionalInputValue<EnvironmentServer, Map<String, dynamic>>(server, (value) => value.toMap()),
      'serviceName': serviceName,
      'title': title,
      'workspaceName': workspaceName,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      customProperties: map['customProperties'] == null ? null : pulumi.Output.create<dynamic>(map['customProperties']),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentName: map['environmentName'] == null ? null : pulumi.Output.create<String>(map['environmentName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      onboarding: map['onboarding'] == null ? null : pulumi.Output.create<Onboarding>(Onboarding.fromMap((map['onboarding'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      server: map['server'] == null ? null : pulumi.Output.create<EnvironmentServer>(EnvironmentServer.fromMap((map['server'] as Map).cast<String, dynamic>())),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      title: pulumi.Output.create<String>(map['title'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

