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
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag'] as String).input(),
      identity: map['identity'] == null ? null : (IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runRequest: map['runRequest'] == null ? null : (DockerBuildRequest.fromMap((map['runRequest'] as Map).cast<String, dynamic>())).input(),
      taskRunName: map['taskRunName'] == null ? null : (map['taskRunName'] as String).input(),
    );
  }
}

