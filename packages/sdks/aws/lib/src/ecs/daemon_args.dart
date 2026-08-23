// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_deployment_configuration.dart';
import 'daemon_timeouts.dart';

/// {@template pulumi_ecs_daemon_daemon_args_doc}
/// The set of arguments for Daemon.
/// {@endtemplate}
/// {@macro pulumi_ecs_daemon_daemon_args_doc}
class DaemonArgs {
  /// Set of capacity provider ARNs to use for the daemon.
  final pulumi.Input<List<String>> capacityProviderArns;
  /// ARN of the ECS cluster where the daemon will run.
  final pulumi.Input<String>? clusterArn;
  /// ARN of the daemon task definition to use for the daemon. Drift is not detected on this attribute because the API may report a stale revision while a deployment is in progress.
  final pulumi.Input<String> daemonTaskDefinitionArn;
  /// Configuration for daemon deployments. See Deployment Configuration below.
  final pulumi.Input<DaemonDeploymentConfiguration>? deploymentConfiguration;
  /// Whether to enable Amazon ECS managed tags for the tasks within the daemon.
  final pulumi.Input<bool>? enableEcsManagedTags;
  /// Whether to enable Amazon ECS Exec for the tasks within the daemon.
  final pulumi.Input<bool>? enableExecuteCommand;
  /// Name of the daemon.
  final pulumi.Input<String>? name;
  /// Whether to propagate tags from the daemon to tasks. Valid values are `DAEMON` or `NONE`.
  final pulumi.Input<String>? propagateTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DaemonTimeouts>? timeouts;

  /// Creates a new [DaemonArgs].
  /// [capacityProviderArns] Set of capacity provider ARNs to use for the daemon.
  /// [clusterArn] ARN of the ECS cluster where the daemon will run.
  /// [daemonTaskDefinitionArn] ARN of the daemon task definition to use for the daemon. Drift is not detected on this attribute because the API may report a stale revision while a deployment is in progress.
  /// [deploymentConfiguration] Configuration for daemon deployments. See Deployment Configuration below.
  /// [enableEcsManagedTags] Whether to enable Amazon ECS managed tags for the tasks within the daemon.
  /// [enableExecuteCommand] Whether to enable Amazon ECS Exec for the tasks within the daemon.
  /// [name] Name of the daemon.
  /// [propagateTags] Whether to propagate tags from the daemon to tasks. Valid values are `DAEMON` or `NONE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const DaemonArgs({
    required this.capacityProviderArns,
    this.clusterArn,
    required this.daemonTaskDefinitionArn,
    this.deploymentConfiguration,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.name,
    this.propagateTags,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderArns': capacityProviderArns,
      'clusterArn': ?clusterArn,
      'daemonTaskDefinitionArn': daemonTaskDefinitionArn,
      'deploymentConfiguration': ?pulumi.Input.mapOptionalInputValue<DaemonDeploymentConfiguration, Map<String, dynamic>>(deploymentConfiguration, (value) => value.toMap()),
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'name': ?name,
      'propagateTags': ?propagateTags,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DaemonTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DaemonArgs.fromMap(Map<String, dynamic> map) {
    return DaemonArgs(
      capacityProviderArns: pulumi.Input.fromValue((map['capacityProviderArns'] as List).cast<String>()),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daemonTaskDefinitionArn: pulumi.Input.fromValue(map['daemonTaskDefinitionArn'] as String),
      deploymentConfiguration: (() { final guardedValue = map['deploymentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableEcsManagedTags: (() { final guardedValue = map['enableEcsManagedTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableExecuteCommand: (() { final guardedValue = map['enableExecuteCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
