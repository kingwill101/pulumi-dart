// ignore_for_file: unused_element, unnecessary_cast

class ClusterCapacityProvidersDefaultCapacityProviderStrategy {
  /// The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to `0`.
  final int? base;

  /// Name of the capacity provider.
  final String capacityProvider;

  /// The relative percentage of the total number of launched tasks that should use the specified capacity provider. The `weight` value is taken into consideration after the `base` count of tasks has been satisfied. Defaults to `0`.
  final int? weight;

  ClusterCapacityProvidersDefaultCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseValue = base;
    if (baseValue != null) {
      map['base'] = baseValue;
    }
    map['capacityProvider'] = capacityProvider;
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory ClusterCapacityProvidersDefaultCapacityProviderStrategy.fromMap(
      Map<String, dynamic> map) {
    return ClusterCapacityProvidersDefaultCapacityProviderStrategy(
      base: map['base'] == null ? null : map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
