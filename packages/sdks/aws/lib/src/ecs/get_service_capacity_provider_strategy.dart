// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceCapacityProviderStrategy {
  /// Number of tasks using the specified capacity provider
  final pulumi.Input<int> base;
  /// Name of the capacity provider
  final pulumi.Input<String> capacityProvider;
  /// Relative percentage of total tasks to launch
  final pulumi.Input<int> weight;

  /// Creates a new [GetServiceCapacityProviderStrategy].
  /// [base] Number of tasks using the specified capacity provider
  /// [capacityProvider] Name of the capacity provider
  /// [weight] Relative percentage of total tasks to launch
  const GetServiceCapacityProviderStrategy({
    required this.base,
    required this.capacityProvider,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': base,
      'capacityProvider': capacityProvider,
      'weight': weight,
    };
  }

  factory GetServiceCapacityProviderStrategy.fromMap(Map<String, dynamic> map) {
    return GetServiceCapacityProviderStrategy(
      base: pulumi.Input.fromValue(map['base'] as int),
      capacityProvider: pulumi.Input.fromValue(map['capacityProvider'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
