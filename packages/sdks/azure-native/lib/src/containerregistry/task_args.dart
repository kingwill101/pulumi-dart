// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties.dart';
import 'credentials.dart';
import 'identity_properties.dart';
import 'platform_properties.dart';
import 'trigger_properties.dart';

/// {@template pulumi_containerregistry_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_task_args_doc}
class TaskArgs {
  /// The machine configuration of the run agent.
  final pulumi.Input<AgentProperties?>? agentConfiguration;
  /// The dedicated agent pool for the task.
  final pulumi.Input<String?>? agentPoolName;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final pulumi.Input<Credentials?>? credentials;
  /// Identity for the resource.
  final pulumi.Input<IdentityProperties?>? identity;
  /// The value of this property indicates whether the task resource is system task or not.
  final pulumi.Input<bool?>? isSystemTask;
  /// The location of the resource. This cannot be changed after the resource is created.
  final pulumi.Input<String?>? location;
  /// The template that describes the repository and tag information for run log artifact.
  final pulumi.Input<String?>? logTemplate;
  /// The platform properties against which the run has to happen.
  final pulumi.Input<PlatformProperties?>? platform;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The current status of task.
  final pulumi.Input<dynamic>? status;
  /// The properties of a task step.
  final pulumi.Input<dynamic>? step;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the container registry task.
  final pulumi.Input<String?>? taskName;
  /// Run timeout in seconds.
  final pulumi.Input<int?>? timeout;
  /// The properties that describe all triggers for the task.
  final pulumi.Input<TriggerProperties?>? trigger;

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
    pulumi.Input<bool?>? isSystemTask,
    this.location,
    this.logTemplate,
    this.platform,
    required this.registryName,
    required this.resourceGroupName,
    this.status,
    this.step,
    this.tags,
    this.taskName,
    pulumi.Input<int?>? timeout,
    this.trigger,
  }) : isSystemTask = isSystemTask ?? pulumi.Input.fromValue(false), timeout = timeout ?? pulumi.Input.fromValue(3600);

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
      'step': ?step,
      'tags': ?tags,
      'taskName': ?taskName,
      'timeout': ?timeout,
      'trigger': ?pulumi.Input.mapOptionalInputValue<TriggerProperties, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      agentConfiguration: (() { final guardedValue = map['agentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentPoolName: (() { final guardedValue = map['agentPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Credentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isSystemTask: (() { final guardedValue = map['isSystemTask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logTemplate: (() { final guardedValue = map['logTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlatformProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      step: (() { final guardedValue = map['step']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
