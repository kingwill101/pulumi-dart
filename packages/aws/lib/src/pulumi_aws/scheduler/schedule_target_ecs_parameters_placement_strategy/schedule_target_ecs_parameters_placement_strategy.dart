// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetEcsParametersPlacementStrategy {
  /// The field to apply the placement strategy against.
  final String? field;

  /// The type of placement strategy. One of: <span pulumi-lang-nodejs="`random`" pulumi-lang-dotnet="`Random`" pulumi-lang-go="`random`" pulumi-lang-python="`random`" pulumi-lang-yaml="`random`" pulumi-lang-java="`random`">`random`</span>, <span pulumi-lang-nodejs="`spread`" pulumi-lang-dotnet="`Spread`" pulumi-lang-go="`spread`" pulumi-lang-python="`spread`" pulumi-lang-yaml="`spread`" pulumi-lang-java="`spread`">`spread`</span>, <span pulumi-lang-nodejs="`binpack`" pulumi-lang-dotnet="`Binpack`" pulumi-lang-go="`binpack`" pulumi-lang-python="`binpack`" pulumi-lang-yaml="`binpack`" pulumi-lang-java="`binpack`">`binpack`</span>.
  final String type;

  ScheduleTargetEcsParametersPlacementStrategy({
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    map['type'] = type;
    return map;
  }

  factory ScheduleTargetEcsParametersPlacementStrategy.fromMap(
      Map<String, dynamic> map) {
    return ScheduleTargetEcsParametersPlacementStrategy(
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] as String,
    );
  }
}
