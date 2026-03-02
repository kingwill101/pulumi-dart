// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSetCapacityProviderStrategy {
  /// The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
  final pulumi.Input<int>? base;
  /// The short name or full Amazon Resource Name (ARN) of the capacity provider.
  final pulumi.Input<String> capacityProvider;
  /// The relative percentage of the total number of launched tasks that should use the specified capacity provider.
  final pulumi.Input<int> weight;

  /// Creates a new [TaskSetCapacityProviderStrategy].
  /// [base] The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
  /// [capacityProvider] The short name or full Amazon Resource Name (ARN) of the capacity provider.
  /// [weight] The relative percentage of the total number of launched tasks that should use the specified capacity provider.
  TaskSetCapacityProviderStrategy({
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
      base: map['base'] == null ? null : ((map['base'] as int).input()).input(),
      capacityProvider: (map['capacityProvider'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

