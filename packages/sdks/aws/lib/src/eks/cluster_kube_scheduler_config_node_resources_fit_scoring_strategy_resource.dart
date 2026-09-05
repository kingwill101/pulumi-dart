// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource {
  /// The name of the resource (e.g., `cpu`, `memory`, `nvidia.com/gpu`).
  final pulumi.Input<String?>? name;
  /// The weight assigned to the resource for scoring. Must be between `1` and `100`.
  final pulumi.Input<int?>? weight;

  /// Creates a new [ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource].
  /// [name] The name of the resource (e.g., `cpu`, `memory`, `nvidia.com/gpu`).
  /// [weight] The weight assigned to the resource for scoring. Must be between `1` and `100`.
  const ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource({
    this.name,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'weight': ?weight,
    };
  }

  factory ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource.fromMap(Map<String, dynamic> map) {
    return ClusterKubeSchedulerConfigNodeResourcesFitScoringStrategyResource(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
