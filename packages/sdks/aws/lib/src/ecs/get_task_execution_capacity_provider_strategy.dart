// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskExecutionCapacityProviderStrategy {
  /// The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to `0`.
  final pulumi.Input<int>? base;

  /// Name of the capacity provider.
  final pulumi.Input<String> capacityProvider;

  /// The relative percentage of the total number of launched tasks that should use the specified capacity provider. The `weight` value is taken into consideration after the `base` count of tasks has been satisfied. Defaults to `0`.
  final pulumi.Input<int>? weight;

  /// Creates a new [GetTaskExecutionCapacityProviderStrategy].
  /// [base] The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to `0`.
  /// [capacityProvider] Name of the capacity provider.
  /// [weight] The relative percentage of the total number of launched tasks that should use the specified capacity provider. The `weight` value is taken into consideration after the `base` count of tasks has been satisfied. Defaults to `0`.
  GetTaskExecutionCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': ?base,
      'capacityProvider': capacityProvider,
      'weight': ?weight,
    };
  }

  factory GetTaskExecutionCapacityProviderStrategy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTaskExecutionCapacityProviderStrategy(
      base: (() {
        final guardedValue = map['base'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      capacityProvider: pulumi.Input.fromValue(
        map['capacityProvider'] as String,
      ),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
