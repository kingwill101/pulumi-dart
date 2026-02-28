// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetEcsParametersCapacityProviderStrategy {
  /// How many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Ranges from `0` (default) to `100000`.
  final int? base;

  /// Short name of the capacity provider.
  final String capacityProvider;

  /// Designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied. Ranges from from `0` to `1000`.
  final int? weight;

  /// Creates a new [ScheduleTargetEcsParametersCapacityProviderStrategy].
  /// [base] How many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Ranges from `0` (default) to `100000`.
  /// [capacityProvider] Short name of the capacity provider.
  /// [weight] Designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied. Ranges from from `0` to `1000`.
  ScheduleTargetEcsParametersCapacityProviderStrategy({
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

  factory ScheduleTargetEcsParametersCapacityProviderStrategy.fromMap(
      Map<String, dynamic> map) {
    return ScheduleTargetEcsParametersCapacityProviderStrategy(
      base: map['base'] == null ? null : map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
