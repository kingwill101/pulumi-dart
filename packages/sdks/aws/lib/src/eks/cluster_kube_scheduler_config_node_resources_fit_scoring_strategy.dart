// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_kube_scheduler_config_node_resources_fit_scoring_strategy_resource.dart';

class ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy {
  /// List of resource weight configuration blocks for scoring nodes. Detailed below.
  final pulumi.Input<List<ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource>?>? resources;
  /// The scoring strategy type. Valid values are `LeastAllocated` and `MostAllocated`. Default is `LeastAllocated`.
  final pulumi.Input<String?>? type;

  /// Creates a new [ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy].
  /// [resources] List of resource weight configuration blocks for scoring nodes. Detailed below.
  /// [type] The scoring strategy type. Valid values are `LeastAllocated` and `MostAllocated`. Default is `LeastAllocated`.
  const ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy({
    this.resources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy.fromMap(Map<String, dynamic> map) {
    return ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy(
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource>(guardedValue, (value) => ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
