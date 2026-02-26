// ignore_for_file: unused_element, unnecessary_cast

class EventTargetEcsTargetCapacityProviderStrategy {
  /// The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int? base;

  /// Short name of the capacity provider.
  final String capacityProvider;

  /// The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the base value, if defined, is satisfied.
  final int? weight;

  EventTargetEcsTargetCapacityProviderStrategy({
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

  factory EventTargetEcsTargetCapacityProviderStrategy.fromMap(
      Map<String, dynamic> map) {
    return EventTargetEcsTargetCapacityProviderStrategy(
      base: map['base'] == null ? null : map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
