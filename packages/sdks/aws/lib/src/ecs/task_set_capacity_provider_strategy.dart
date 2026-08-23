// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSetCapacityProviderStrategy {
  /// Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
  final pulumi.Input<int>? base;
  /// Short name or full Amazon Resource Name (ARN) of the capacity provider.
  final pulumi.Input<String> capacityProvider;
  /// Relative percentage of the total number of launched tasks that should use the specified capacity provider.
  final pulumi.Input<int> weight;

  /// Creates a new [TaskSetCapacityProviderStrategy].
  /// [base] Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
  /// [capacityProvider] Short name or full Amazon Resource Name (ARN) of the capacity provider.
  /// [weight] Relative percentage of the total number of launched tasks that should use the specified capacity provider.
  const TaskSetCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': ?base,
      'capacityProvider': capacityProvider,
      'weight': weight,
    };
  }

  factory TaskSetCapacityProviderStrategy.fromMap(Map<String, dynamic> map) {
    return TaskSetCapacityProviderStrategy(
      base: (() { final guardedValue = map['base']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      capacityProvider: pulumi.Input.fromValue(map['capacityProvider'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
