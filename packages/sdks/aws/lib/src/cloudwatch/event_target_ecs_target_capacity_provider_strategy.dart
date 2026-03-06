// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetEcsTargetCapacityProviderStrategy {
  /// The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to `0`.
  final pulumi.Input<int>? base;
  /// Short name of the capacity provider.
  final pulumi.Input<String> capacityProvider;
  /// The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied.
  final pulumi.Input<int>? weight;

  /// Creates a new [EventTargetEcsTargetCapacityProviderStrategy].
  /// [base] The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to `0`.
  /// [capacityProvider] Short name of the capacity provider.
  /// [weight] The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied.
  const EventTargetEcsTargetCapacityProviderStrategy({
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

  factory EventTargetEcsTargetCapacityProviderStrategy.fromMap(Map<String, dynamic> map) {
    return EventTargetEcsTargetCapacityProviderStrategy(
      base: (() { final guardedValue = map['base']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      capacityProvider: pulumi.Input.fromValue(map['capacityProvider'] as String),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

