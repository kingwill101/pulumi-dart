// ignore_for_file: unused_element, unnecessary_cast

class GetServiceCapacityProviderStrategy {
  /// Number of tasks using the specified capacity provider
  final int base;

  /// Name of the capacity provider
  final String capacityProvider;

  /// Relative percentage of total tasks to launch
  final int weight;

  /// Creates a new [GetServiceCapacityProviderStrategy].
  /// [base] Number of tasks using the specified capacity provider
  /// [capacityProvider] Name of the capacity provider
  /// [weight] Relative percentage of total tasks to launch
  GetServiceCapacityProviderStrategy({
    required this.base,
    required this.capacityProvider,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['base'] = base;
    map['capacityProvider'] = capacityProvider;
    map['weight'] = weight;
    return map;
  }

  factory GetServiceCapacityProviderStrategy.fromMap(Map<String, dynamic> map) {
    return GetServiceCapacityProviderStrategy(
      base: map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] as int,
    );
  }
}
