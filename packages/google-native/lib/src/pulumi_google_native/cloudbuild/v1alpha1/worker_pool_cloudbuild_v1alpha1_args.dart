// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_config_cloudbuild_v1alpha1.dart';
import 'worker_pool_regions_item.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolCloudbuildV1alpha1Args {
  /// User-defined name of the `WorkerPool`.
  final pulumi.Input<String>? name;

  /// The project ID of the GCP project for which the `WorkerPool` is created.
  final pulumi.Input<String>? project;

  /// List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  final pulumi.Input<List<WorkerPoolRegionsItem>>? regions;

  /// Configuration to be used for a creating workers in the `WorkerPool`.
  final pulumi.Input<WorkerConfigCloudbuildV1alpha1>? workerConfig;

  /// Total number of workers to be created across all requested regions.
  final pulumi.Input<String>? workerCount;

  WorkerPoolCloudbuildV1alpha1Args({
    this.name,
    this.project,
    this.regions,
    this.workerConfig,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = pulumi.Input.mapOptionalInputValue<
              List<WorkerPoolRegionsItem>, List<String>>(
          regionsValue,
          (value) => pulumi.Input.encodeList<WorkerPoolRegionsItem, String>(
              value, (value) => value.value));
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkerConfigCloudbuildV1alpha1,
          Map<String, dynamic>>(workerConfigValue, (value) => value.toMap());
    }
    final workerCountValue = workerCount;
    if (workerCountValue != null) {
      map['workerCount'] = workerCountValue;
    }
    return map;
  }

  factory WorkerPoolCloudbuildV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return WorkerPoolCloudbuildV1alpha1Args(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regions: pulumi.Input.asOptionalInput<List<WorkerPoolRegionsItem>>(
          map['regions']),
      workerConfig:
          pulumi.Input.asOptionalInput<WorkerConfigCloudbuildV1alpha1>(
              map['workerConfig']),
      workerCount: pulumi.Input.asOptionalInput<String>(map['workerCount']),
    );
  }
}
