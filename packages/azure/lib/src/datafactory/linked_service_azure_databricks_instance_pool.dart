// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceAzureDatabricksInstancePool {
  /// Spark version of a the cluster.
  final String clusterVersion;
  /// Identifier of the instance pool within the linked ADB instance.
  final String instancePoolId;
  /// The max number of worker nodes. Set this value if you want to enable autoscaling between the `min_number_of_workers` and this value. Omit this value to use a fixed number of workers defined in the `min_number_of_workers` property.
  final int? maxNumberOfWorkers;
  /// The minimum number of worker nodes. Defaults to `1`.
  final int? minNumberOfWorkers;

  /// Creates a new [LinkedServiceAzureDatabricksInstancePool].
  /// [clusterVersion] Spark version of a the cluster.
  /// [instancePoolId] Identifier of the instance pool within the linked ADB instance.
  /// [maxNumberOfWorkers] The max number of worker nodes. Set this value if you want to enable autoscaling between the `min_number_of_workers` and this value. Omit this value to use a fixed number of workers defined in the `min_number_of_workers` property.
  /// [minNumberOfWorkers] The minimum number of worker nodes. Defaults to `1`.
  LinkedServiceAzureDatabricksInstancePool({
    required this.clusterVersion,
    required this.instancePoolId,
    this.maxNumberOfWorkers,
    this.minNumberOfWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': clusterVersion,
      'instancePoolId': instancePoolId,
      'maxNumberOfWorkers': ?maxNumberOfWorkers,
      'minNumberOfWorkers': ?minNumberOfWorkers,
    };
  }

  factory LinkedServiceAzureDatabricksInstancePool.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureDatabricksInstancePool(
      clusterVersion: map['clusterVersion'] as String,
      instancePoolId: map['instancePoolId'] as String,
      maxNumberOfWorkers: map['maxNumberOfWorkers'] == null ? null : map['maxNumberOfWorkers'] as int,
      minNumberOfWorkers: map['minNumberOfWorkers'] == null ? null : map['minNumberOfWorkers'] as int,
    );
  }
}

