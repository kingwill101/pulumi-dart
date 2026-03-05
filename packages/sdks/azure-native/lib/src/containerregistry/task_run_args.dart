// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_build_request.dart';
import 'identity_properties.dart';

/// {@template pulumi_containerregistry_task_run_args_doc}
/// The set of arguments for TaskRun.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_task_run_args_doc}
class TaskRunArgs {
  /// How the run should be forced to rerun even if the run request configuration has not changed
  final pulumi.Input<String>? forceUpdateTag;
  /// Identity for the resource.
  final pulumi.Input<IdentityProperties>? identity;
  /// The location of the resource
  final pulumi.Input<String>? location;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The request (parameters) for the run
  final pulumi.Input<DockerBuildRequest>? runRequest;
  /// The name of the task run.
  final pulumi.Input<String>? taskRunName;

  /// Creates a new [TaskRunArgs].
  /// [forceUpdateTag] How the run should be forced to rerun even if the run request configuration has not changed
  /// [identity] Identity for the resource.
  /// [location] The location of the resource
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [runRequest] The request (parameters) for the run
  /// [taskRunName] The name of the task run.
  TaskRunArgs({
    this.forceUpdateTag,
    this.identity,
    this.location,
    required this.registryName,
    required this.resourceGroupName,
    this.runRequest,
    this.taskRunName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpdateTag': ?forceUpdateTag,
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'runRequest': ?pulumi.Input.mapOptionalInputValue<DockerBuildRequest, Map<String, dynamic>>(runRequest, (value) => value.toMap()),
      'taskRunName': ?taskRunName,
    };
  }

  factory TaskRunArgs.fromMap(Map<String, dynamic> map) {
    return TaskRunArgs(
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runRequest: (() { final guardedValue = map['runRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerBuildRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskRunName: (() { final guardedValue = map['taskRunName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

