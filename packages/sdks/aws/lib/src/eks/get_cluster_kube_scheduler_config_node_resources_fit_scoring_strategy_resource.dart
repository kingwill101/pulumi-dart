// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource {
  /// Name of the cluster.
  final pulumi.Input<String> name;
  /// The weight assigned to the resource for scoring (1-100).
  final pulumi.Input<int> weight;

  /// Creates a new [GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource].
  /// [name] Name of the cluster.
  /// [weight] The weight assigned to the resource for scoring (1-100).
  const GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource({
    required this.name,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'weight': weight,
    };
  }

  factory GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource(
      name: pulumi.Input.fromValue(map['name'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
