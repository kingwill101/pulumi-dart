// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudmonitor_service_agent_config_service_agent_config_args_doc}
/// The set of arguments for ServiceAgentConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudmonitor_service_agent_config_service_agent_config_args_doc}
class ServiceAgentConfigArgs {
  /// Whether the cloud monitoring plug-in is automatically installed on the newly purchased ECS host. Value:
  /// - true (default): The cloud monitoring plug-in is automatically installed on the newly purchased ECS host.
  /// - false: The cloud monitoring plug-in is not automatically installed on the newly purchased ECS host.
  final pulumi.Input<bool>? enableInstallAgentNewEcs;

  /// Creates a new [ServiceAgentConfigArgs].
  /// [enableInstallAgentNewEcs] Whether the cloud monitoring plug-in is automatically installed on the newly purchased ECS host. Value:
  ServiceAgentConfigArgs({
    this.enableInstallAgentNewEcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInstallAgentNewEcs': ?enableInstallAgentNewEcs,
    };
  }

  factory ServiceAgentConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServiceAgentConfigArgs(
      enableInstallAgentNewEcs: map['enableInstallAgentNewEcs'] == null ? null : (map['enableInstallAgentNewEcs']! as bool).input(),
    );
  }
}

