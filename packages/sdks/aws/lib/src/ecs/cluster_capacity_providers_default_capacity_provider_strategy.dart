// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCapacityProvidersDefaultCapacityProviderStrategy {
  /// Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to `0`.
  final pulumi.Input<int?>? base;
  /// Name of the capacity provider.
  final pulumi.Input<String> capacityProvider;
  /// Relative percentage of the total number of launched tasks that should use the specified capacity provider. The `weight` value is taken into consideration after the `base` count of tasks has been satisfied. Defaults to `0`.
  final pulumi.Input<int?>? weight;

  /// Creates a new [ClusterCapacityProvidersDefaultCapacityProviderStrategy].
  /// [base] Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to `0`.
  /// [capacityProvider] Name of the capacity provider.
  /// [weight] Relative percentage of the total number of launched tasks that should use the specified capacity provider. The `weight` value is taken into consideration after the `base` count of tasks has been satisfied. Defaults to `0`.
  const ClusterCapacityProvidersDefaultCapacityProviderStrategy({
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

  factory ClusterCapacityProvidersDefaultCapacityProviderStrategy.fromMap(Map<String, dynamic> map) {
    return ClusterCapacityProvidersDefaultCapacityProviderStrategy(
      base: (() { final guardedValue = map['base']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      capacityProvider: pulumi.Input.fromValue(map['capacityProvider'] as String),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
