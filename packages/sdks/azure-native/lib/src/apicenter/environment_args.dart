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
      customProperties: map['customProperties'] == null ? null : (map['customProperties']!).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentName: map['environmentName'] == null ? null : (map['environmentName']! as String).input(),
      kind: (map['kind'] as String).input(),
      onboarding: map['onboarding'] == null ? null : (Onboarding.fromMap((map['onboarding']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      server: map['server'] == null ? null : (EnvironmentServer.fromMap((map['server']! as Map).cast<String, dynamic>())).input(),
      serviceName: (map['serviceName'] as String).input(),
      title: (map['title'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

