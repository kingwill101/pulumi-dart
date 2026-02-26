// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_autoscale_response.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_worker_config_response.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult5 {
  /// The autoscale policy to apply on a pool.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse
      autoscale;

  /// Channel specifies the release channel of the pool.
  final String channel;

  /// WorkerPool resource name formatted as: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`. name should not be populated when creating a worker pool since it is provided in the `poolId` field.
  final String name;

  /// State of the worker pool.
  final String state;

  /// Specifies the properties, such as machine type and disk size, used for creating workers in a worker pool.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse
      workerConfig;

  /// The desired number of workers in the worker pool. Must be a value between 0 and 15000.
  final String workerCount;

  GetWorkerPoolResult5({
    required this.autoscale,
    required this.channel,
    required this.name,
    required this.state,
    required this.workerConfig,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscale'] = autoscale.toMap();
    map['channel'] = channel;
    map['name'] = name;
    map['state'] = state;
    map['workerConfig'] = workerConfig.toMap();
    map['workerCount'] = workerCount;
    return map;
  }

  factory GetWorkerPoolResult5.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult5(
      autoscale: GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscaleResponse
          .fromMap((map['autoscale'] as Map).cast<String, dynamic>()),
      channel: map['channel'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      workerConfig:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfigResponse
              .fromMap((map['workerConfig'] as Map).cast<String, dynamic>()),
      workerCount: map['workerCount'] as String,
    );
  }
}
