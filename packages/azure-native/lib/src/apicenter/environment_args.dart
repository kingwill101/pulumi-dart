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
    dynamic customProperties,
    String? description,
    String? environmentName,
    required String kind,
    Onboarding? onboarding,
    required String resourceGroupName,
    EnvironmentServer? server,
    required String serviceName,
    required String title,
    required String workspaceName,
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
      customProperties: map['customProperties'] == null ? null : map['customProperties'],
      description: map['description'] == null ? null : map['description'] as String,
      environmentName: map['environmentName'] == null ? null : map['environmentName'] as String,
      kind: map['kind'] as String,
      onboarding: map['onboarding'] == null ? null : Onboarding.fromMap((map['onboarding'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      server: map['server'] == null ? null : EnvironmentServer.fromMap((map['server'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] as String,
      title: map['title'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

