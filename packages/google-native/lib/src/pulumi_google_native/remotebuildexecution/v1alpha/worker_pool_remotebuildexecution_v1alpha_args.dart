// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_autoscale.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_worker_config.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolRemotebuildexecutionV1alphaArgs {
  /// The autoscale policy to apply on a pool.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale>?
      autoscale;

  /// Channel specifies the release channel of the pool.
  final pulumi.Input<String>? channel;
  final pulumi.Input<String> instanceId;

  /// WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  final pulumi.Input<String>? name;

  /// Resource name of the instance in which to create the new worker pool. Format: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`.
  final pulumi.Input<String>? parent;

  /// ID of the created worker pool. A valid pool ID must: be 6-50 characters long, contain only lowercase letters, digits, hyphens and underscores, start with a lowercase letter, and end with a lowercase letter or a digit.
  final pulumi.Input<String>? poolId;
  final pulumi.Input<String>? project;

  /// Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  final pulumi
      .Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig>?
      workerConfig;

  /// The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  final pulumi.Input<String>? workerCount;

  WorkerPoolRemotebuildexecutionV1alphaArgs({
    this.autoscale,
    this.channel,
    required this.instanceId,
    this.name,
    this.parent,
    this.poolId,
    this.project,
    this.workerConfig,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscaleValue = autoscale;
    if (autoscaleValue != null) {
      map['autoscale'] = pulumi.Input.mapOptionalInputValue<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale,
          Map<String, dynamic>>(autoscaleValue, (value) => value.toMap());
    }
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final poolIdValue = poolId;
    if (poolIdValue != null) {
      map['poolId'] = poolIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig,
          Map<String, dynamic>>(workerConfigValue, (value) => value.toMap());
    }
    final workerCountValue = workerCount;
    if (workerCountValue != null) {
      map['workerCount'] = workerCountValue;
    }
    return map;
  }

  factory WorkerPoolRemotebuildexecutionV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return WorkerPoolRemotebuildexecutionV1alphaArgs(
      autoscale: pulumi.Input.asOptionalInput<
              GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale>(
          map['autoscale']),
      channel: pulumi.Input.asOptionalInput<String>(map['channel']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      poolId: pulumi.Input.asOptionalInput<String>(map['poolId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workerConfig: pulumi.Input.asOptionalInput<
              GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig>(
          map['workerConfig']),
      workerCount: pulumi.Input.asOptionalInput<String>(map['workerCount']),
    );
  }
}
