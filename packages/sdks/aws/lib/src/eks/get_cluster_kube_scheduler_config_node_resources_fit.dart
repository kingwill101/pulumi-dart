// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_kube_scheduler_config_node_resources_fit_scoring_strategy.dart';

class GetClusterKubeSchedulerConfigNodeResourcesFit {
  /// The scoring strategy used to rank nodes during scheduling.
  final pulumi.Input<List<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy>> scoringStrategies;

  /// Creates a new [GetClusterKubeSchedulerConfigNodeResourcesFit].
  /// [scoringStrategies] The scoring strategy used to rank nodes during scheduling.
  const GetClusterKubeSchedulerConfigNodeResourcesFit({
    required this.scoringStrategies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scoringStrategies': pulumi.Input.mapInputValue<List<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy>, List<Map<String, dynamic>>>(scoringStrategies, (value) => pulumi.Input.encodeList<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterKubeSchedulerConfigNodeResourcesFit.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeSchedulerConfigNodeResourcesFit(
      scoringStrategies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy>(map['scoringStrategies']!, (value) => GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
