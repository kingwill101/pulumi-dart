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
    this.customProperties,
    this.description,
    this.environmentName,
    required this.kind,
    this.onboarding,
    required this.resourceGroupName,
    this.server,
    required this.serviceName,
    required this.title,
    required this.workspaceName,
  });

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
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      onboarding: (() { final guardedValue = map['onboarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Onboarding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

