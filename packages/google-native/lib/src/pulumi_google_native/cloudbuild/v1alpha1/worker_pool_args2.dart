// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'worker_config2.dart';
import 'worker_pool_regions_item.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolArgs2 {
  /// User-defined name of the `WorkerPool`.
  final Input<String>? name;

  /// The project ID of the GCP project for which the `WorkerPool` is created.
  final Input<String>? project;

  /// List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  final Input<List<WorkerPoolRegionsItem>>? regions;

  /// Configuration to be used for a creating workers in the `WorkerPool`.
  final Input<WorkerConfig2>? workerConfig;

  /// Total number of workers to be created across all requested regions.
  final Input<String>? workerCount;

  WorkerPoolArgs2({
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
      map['regions'] = Input.mapOptionalInputValue<List<WorkerPoolRegionsItem>,
              List<String>>(
          regionsValue,
          (value) => Input.encodeList<WorkerPoolRegionsItem, String>(
              value, (value) => value.value));
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] =
          Input.mapOptionalInputValue<WorkerConfig2, Map<String, dynamic>>(
              workerConfigValue, (value) => value.toMap());
    }
    final workerCountValue = workerCount;
    if (workerCountValue != null) {
      map['workerCount'] = workerCountValue;
    }
    return map;
  }

  factory WorkerPoolArgs2.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      regions:
          Input.asOptionalInput<List<WorkerPoolRegionsItem>>(map['regions']),
      workerConfig: Input.asOptionalInput<WorkerConfig2>(map['workerConfig']),
      workerCount: Input.asOptionalInput<String>(map['workerCount']),
    );
  }
}
