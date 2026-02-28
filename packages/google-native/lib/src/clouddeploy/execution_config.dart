// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_pool.dart';
import 'execution_config_usages_item.dart';
import 'private_pool.dart';

/// Configuration of the environment to use when calling Skaffold.
class ExecutionConfig {
  /// Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final String? artifactStorage;

  /// Optional. Use default Cloud Build pool.
  final DefaultPool? defaultPool;

  /// Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  final String? executionTimeout;

  /// Optional. Use private Cloud Build pool.
  final PrivatePool? privatePool;

  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  final String? serviceAccount;

  /// Usages when this configuration should be applied.
  final List<ExecutionConfigUsagesItem> usages;

  /// Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  final String? workerPool;

  /// Creates a new [ExecutionConfig].
  /// [artifactStorage] Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [defaultPool] Optional. Use default Cloud Build pool.
  /// [executionTimeout] Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.
  /// [privatePool] Optional. Use private Cloud Build pool.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.
  /// [usages] Usages when this configuration should be applied.
  /// [workerPool] Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.
  ExecutionConfig({
    this.artifactStorage,
    this.defaultPool,
    this.executionTimeout,
    this.privatePool,
    this.serviceAccount,
    required this.usages,
    this.workerPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactStorageValue = artifactStorage;
    if (artifactStorageValue != null) {
      map['artifactStorage'] = artifactStorageValue;
    }
    final defaultPoolValue = defaultPool;
    if (defaultPoolValue != null) {
      map['defaultPool'] = defaultPoolValue.toMap();
    }
    final executionTimeoutValue = executionTimeout;
    if (executionTimeoutValue != null) {
      map['executionTimeout'] = executionTimeoutValue;
    }
    final privatePoolValue = privatePool;
    if (privatePoolValue != null) {
      map['privatePool'] = privatePoolValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    map['usages'] = pulumi.Input.encodeList<ExecutionConfigUsagesItem, String>(
        usages, (value) => value.value);
    final workerPoolValue = workerPool;
    if (workerPoolValue != null) {
      map['workerPool'] = workerPoolValue;
    }
    return map;
  }

  factory ExecutionConfig.fromMap(Map<String, dynamic> map) {
    return ExecutionConfig(
      artifactStorage: map['artifactStorage'] == null
          ? null
          : map['artifactStorage'] as String,
      defaultPool: map['defaultPool'] == null
          ? null
          : DefaultPool.fromMap(
              (map['defaultPool'] as Map).cast<String, dynamic>()),
      executionTimeout: map['executionTimeout'] == null
          ? null
          : map['executionTimeout'] as String,
      privatePool: map['privatePool'] == null
          ? null
          : PrivatePool.fromMap(
              (map['privatePool'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      usages: pulumi.Input.decodeList<ExecutionConfigUsagesItem>(map['usages'],
          (value) => ExecutionConfigUsagesItem.fromValue(value as String)),
      workerPool:
          map['workerPool'] == null ? null : map['workerPool'] as String,
    );
  }
}
