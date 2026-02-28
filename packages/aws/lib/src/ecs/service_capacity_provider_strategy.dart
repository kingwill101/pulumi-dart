// ignore_for_file: unused_element, unnecessary_cast


class ServiceCapacityProviderStrategy {
  /// Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
  final int? base;
  /// Short name of the capacity provider.
  final String capacityProvider;
  /// Relative percentage of the total number of launched tasks that should use the specified capacity provider.
  final int? weight;

  /// Creates a new [ServiceCapacityProviderStrategy].
  /// [base] Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
  /// [capacityProvider] Short name of the capacity provider.
  /// [weight] Relative percentage of the total number of launched tasks that should use the specified capacity provider.
  ServiceCapacityProviderStrategy({
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

  factory ServiceCapacityProviderStrategy.fromMap(Map<String, dynamic> map) {
    return ServiceCapacityProviderStrategy(
      base: map['base'] == null ? null : map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

