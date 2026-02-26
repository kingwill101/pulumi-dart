// ignore_for_file: unused_element, unnecessary_cast

class GetTaskExecutionCapacityProviderStrategy {
  /// The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int? base;

  /// Name of the capacity provider.
  final String capacityProvider;

  /// The relative percentage of the total number of launched tasks that should use the specified capacity provider. The <span pulumi-lang-nodejs="`weight`" pulumi-lang-dotnet="`Weight`" pulumi-lang-go="`weight`" pulumi-lang-python="`weight`" pulumi-lang-yaml="`weight`" pulumi-lang-java="`weight`">`weight`</span> value is taken into consideration after the <span pulumi-lang-nodejs="`base`" pulumi-lang-dotnet="`Base`" pulumi-lang-go="`base`" pulumi-lang-python="`base`" pulumi-lang-yaml="`base`" pulumi-lang-java="`base`">`base`</span> count of tasks has been satisfied. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int? weight;

  GetTaskExecutionCapacityProviderStrategy({
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

  factory GetTaskExecutionCapacityProviderStrategy.fromMap(
      Map<String, dynamic> map) {
    return GetTaskExecutionCapacityProviderStrategy(
      base: map['base'] == null ? null : map['base'] as int,
      capacityProvider: map['capacityProvider'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
