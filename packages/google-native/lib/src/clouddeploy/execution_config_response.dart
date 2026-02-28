// ignore_for_file: unused_element, unnecessary_cast

import 'default_pool_response.dart';
import 'private_pool_response.dart';

/// Configuration of the environment to use when calling Skaffold.
class ExecutionConfigResponse {
  /// Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final String artifactStorage;
  /// Optional. Use default Cloud Build pool.
  final DefaultPoolResponse defaultPool;
  /// Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  final String executionTimeout;
  /// Optional. Use private Cloud Build pool.
  final PrivatePoolResponse privatePool;
  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  final String serviceAccount;
  /// Usages when this configuration should be applied.
  final List<String> usages;
  /// Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  final String workerPool;

  /// Creates a new [ExecutionConfigResponse].
  /// [artifactStorage] Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [defaultPool] Optional. Use default Cloud Build pool.
  /// [executionTimeout] Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  /// [privatePool] Optional. Use private Cloud Build pool.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  /// [usages] Usages when this configuration should be applied.
  /// [workerPool] Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  ExecutionConfigResponse({
    required this.artifactStorage,
    required this.defaultPool,
    required this.executionTimeout,
    required this.privatePool,
    required this.serviceAccount,
    required this.usages,
    required this.workerPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': artifactStorage,
      'defaultPool': defaultPool.toMap(),
      'executionTimeout': executionTimeout,
      'privatePool': privatePool.toMap(),
      'serviceAccount': serviceAccount,
      'usages': usages,
      'workerPool': workerPool,
    };
  }

  factory ExecutionConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionConfigResponse(
      artifactStorage: map['artifactStorage'] as String,
      defaultPool: DefaultPoolResponse.fromMap((map['defaultPool'] as Map).cast<String, dynamic>()),
      executionTimeout: map['executionTimeout'] as String,
      privatePool: PrivatePoolResponse.fromMap((map['privatePool'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      usages: (map['usages'] as List).cast<String>(),
      workerPool: map['workerPool'] as String,
    );
  }
}

