// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_kube_scheduler_config_node_resources_fit_scoring_strategy.dart';

class ClusterKubeSchedulerConfigNodeResourcesFit {
  /// Configuration block for the scoring strategy used to rank nodes during scheduling. Detailed below.
  final pulumi.Input<ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy?>? scoringStrategy;

  /// Creates a new [ClusterKubeSchedulerConfigNodeResourcesFit].
  /// [scoringStrategy] Configuration block for the scoring strategy used to rank nodes during scheduling. Detailed below.
  const ClusterKubeSchedulerConfigNodeResourcesFit({
    this.scoringStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scoringStrategy': ?pulumi.Input.mapOptionalInputValue<ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy, Map<String, dynamic>>(scoringStrategy, (value) => value.toMap()),
    };
  }

  factory ClusterKubeSchedulerConfigNodeResourcesFit.fromMap(Map<String, dynamic> map) {
    return ClusterKubeSchedulerConfigNodeResourcesFit(
      scoringStrategy: (() { final guardedValue = map['scoringStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
