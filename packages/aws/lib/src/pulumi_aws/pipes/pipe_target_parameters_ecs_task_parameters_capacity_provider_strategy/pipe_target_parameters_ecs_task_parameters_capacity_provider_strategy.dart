// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersEcsTaskParametersCapacityProviderStrategy {
  /// The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. If no value is specified, the default value of 0 is used. Maximum value of 100,000.
  final int? base;

  /// The short name of the capacity provider. Maximum value of 255.
  final String capacityProvider;

  /// The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied. Maximum value of 1,000.
  final int? weight;

  PipeTargetParametersEcsTaskParametersCapacityProviderStrategy({
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

  factory PipeTargetParametersEcsTaskParametersCapacityProviderStrategy.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersCapacityProviderStrategy(
      base: map['base'] == null ? null : map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
