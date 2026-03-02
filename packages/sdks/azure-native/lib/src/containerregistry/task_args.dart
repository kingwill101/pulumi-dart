// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties.dart';
import 'credentials.dart';
import 'docker_build_step.dart';
import 'identity_properties.dart';
import 'platform_properties.dart';
import 'trigger_properties.dart';

/// {@template pulumi_containerregistry_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_task_args_doc}
class TaskArgs {
  /// The machine configuration of the run agent.
  final pulumi.Input<AgentProperties>? agentConfiguration;
  /// The dedicated agent pool for the task.
  final pulumi.Input<String>? agentPoolName;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final pulumi.Input<Credentials>? credentials;
  /// Identity for the resource.
  final pulumi.Input<IdentityProperties>? identity;
  /// The value of this property indicates whether the task resource is system task or not.
  final pulumi.Input<bool>? isSystemTask;
  /// The location of the resource. This cannot be changed after the resource is created.
  final pulumi.Input<String>? location;
  /// The template that describes the repository and tag information for run log artifact.
  final pulumi.Input<String>? logTemplate;
  /// The platform properties against which the run has to happen.
  final pulumi.Input<PlatformProperties>? platform;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The current status of task.
  final pulumi.Input<String>? status;
  /// The properties of a task step.
  final pulumi.Input<DockerBuildStep>? step;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the container registry task.
  final pulumi.Input<String>? taskName;
  /// Run timeout in seconds.
  final pulumi.Input<int>? timeout;
  /// The properties that describe all triggers for the task.
  final pulumi.Input<TriggerProperties>? trigger;

  /// Creates a new [TaskArgs].
  /// [agentConfiguration] The machine configuration of the run agent.
  /// [agentPoolName] The dedicated agent pool for the task.
  /// [credentials] The properties that describes a set of credentials that will be used when this run is invoked.
  /// [identity] Identity for the resource.
  /// [isSystemTask] The value of this property indicates whether the task resource is system task or not.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [logTemplate] The template that describes the repository and tag information for run log artifact.
  /// [platform] The platform properties against which the run has to happen.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [status] The current status of task.
  /// [step] The properties of a task step.
  /// [tags] The tags of the resource.
  /// [taskName] The name of the container registry task.
  /// [timeout] Run timeout in seconds.
  /// [trigger] The properties that describe all triggers for the task.
  TaskArgs({
    this.agentConfiguration,
    this.agentPoolName,
    this.credentials,
    this.identity,
    this.isSystemTask,
    this.location,
    this.logTemplate,
    this.platform,
    required this.registryName,
    required this.resourceGroupName,
    this.status,
    this.step,
    this.tags,
    this.taskName,
    this.timeout,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentProperties, Map<String, dynamic>>(agentConfiguration, (value) => value.toMap()),
      'agentPoolName': ?agentPoolName,
      'credentials': ?pulumi.Input.mapOptionalInputValue<Credentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isSystemTask': ?isSystemTask,
      'location': ?location,
      'logTemplate': ?logTemplate,
      'platform': ?pulumi.Input.mapOptionalInputValue<PlatformProperties, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'status': ?status,
      'step': ?pulumi.Input.mapOptionalInputValue<DockerBuildStep, Map<String, dynamic>>(step, (value) => value.toMap()),
      'tags': ?tags,
      'taskName': ?taskName,
      'timeout': ?timeout,
      'trigger': ?pulumi.Input.mapOptionalInputValue<TriggerProperties, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      agentConfiguration: map['agentConfiguration'] == null ? null : (AgentProperties.fromMap((map['agentConfiguration'] as Map).cast<String, dynamic>())).input(),
      agentPoolName: map['agentPoolName'] == null ? null : (map['agentPoolName'] as String).input(),
      credentials: map['credentials'] == null ? null : (Credentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      isSystemTask: map['isSystemTask'] == null ? null : (map['isSystemTask'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logTemplate: map['logTemplate'] == null ? null : (map['logTemplate'] as String).input(),
      platform: map['platform'] == null ? null : (PlatformProperties.fromMap((map['platform'] as Map).cast<String, dynamic>())).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      step: map['step'] == null ? null : (DockerBuildStep.fromMap((map['step'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      taskName: map['taskName'] == null ? null : (map['taskName'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
      trigger: map['trigger'] == null ? null : (TriggerProperties.fromMap((map['trigger'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

