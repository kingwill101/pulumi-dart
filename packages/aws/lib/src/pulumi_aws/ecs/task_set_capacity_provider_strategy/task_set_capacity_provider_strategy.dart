// ignore_for_file: unused_element, unnecessary_cast

class TaskSetCapacityProviderStrategy {
  /// The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
  final int? base;

  /// The short name or full Amazon Resource Name (ARN) of the capacity provider.
  final String capacityProvider;

  /// The relative percentage of the total number of launched tasks that should use the specified capacity provider.
  final int weight;

  TaskSetCapacityProviderStrategy({
    this.base,
    required this.capacityProvider,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseValue = base;
    if (baseValue != null) {
      map['base'] = baseValue;
    }
    map['capacityProvider'] = capacityProvider;
    map['weight'] = weight;
    return map;
  }

  factory TaskSetCapacityProviderStrategy.fromMap(Map<String, dynamic> map) {
    return TaskSetCapacityProviderStrategy(
      base: map['base'] == null ? null : map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] as int,
    );
  }
}
