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
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<IdentityProperties>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<DockerBuildRequest>? runRequest,
    pulumi.Output<String>? taskRunName,
  }) :
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      identity = pulumi.Input.asOptionalInput<IdentityProperties>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runRequest = pulumi.Input.asOptionalInput<DockerBuildRequest>(runRequest),
      taskRunName = pulumi.Input.asOptionalInput<String>(taskRunName);

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
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityProperties>(IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runRequest: map['runRequest'] == null ? null : pulumi.Output.create<DockerBuildRequest>(DockerBuildRequest.fromMap((map['runRequest'] as Map).cast<String, dynamic>())),
      taskRunName: map['taskRunName'] == null ? null : pulumi.Output.create<String>(map['taskRunName'] as String),
    );
  }
}

