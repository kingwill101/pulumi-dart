// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_kube_scheduler_config_node_resources_fit_scoring_strategy_resource.dart';

class GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy {
  /// List of resource weights for scoring nodes.
  final pulumi.Input<List<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource>> resources;
  /// The scoring strategy type (`LeastAllocated` or `MostAllocated`).
  final pulumi.Input<String> type;

  /// Creates a new [GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy].
  /// [resources] List of resource weights for scoring nodes.
  /// [type] The scoring strategy type (`LeastAllocated` or `MostAllocated`).
  const GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy({
    required this.resources,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': pulumi.Input.mapInputValue<List<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy(
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource>(map['resources']!, (value) => GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
