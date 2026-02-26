// ignore_for_file: unused_element, unnecessary_cast

class EventTargetEcsTargetOrderedPlacementStrategy {
  /// The field to apply the placement strategy against. For the <span pulumi-lang-nodejs="`spread`" pulumi-lang-dotnet="`Spread`" pulumi-lang-go="`spread`" pulumi-lang-python="`spread`" pulumi-lang-yaml="`spread`" pulumi-lang-java="`spread`">`spread`</span> placement strategy, valid values are `instanceId` (or <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as `attribute:ecs.availability-zone`. For the <span pulumi-lang-nodejs="`binpack`" pulumi-lang-dotnet="`Binpack`" pulumi-lang-go="`binpack`" pulumi-lang-python="`binpack`" pulumi-lang-yaml="`binpack`" pulumi-lang-java="`binpack`">`binpack`</span> placement strategy, valid values are <span pulumi-lang-nodejs="`cpu`" pulumi-lang-dotnet="`Cpu`" pulumi-lang-go="`cpu`" pulumi-lang-python="`cpu`" pulumi-lang-yaml="`cpu`" pulumi-lang-java="`cpu`">`cpu`</span> and <span pulumi-lang-nodejs="`memory`" pulumi-lang-dotnet="`Memory`" pulumi-lang-go="`memory`" pulumi-lang-python="`memory`" pulumi-lang-yaml="`memory`" pulumi-lang-java="`memory`">`memory`</span>. For the <span pulumi-lang-nodejs="`random`" pulumi-lang-dotnet="`Random`" pulumi-lang-go="`random`" pulumi-lang-python="`random`" pulumi-lang-yaml="`random`" pulumi-lang-java="`random`">`random`</span> placement strategy, this field is not used. For more information, see [Amazon ECS task placement strategies](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html).
  final String? field;

  /// Type of placement strategy. The only valid values at this time are <span pulumi-lang-nodejs="`binpack`" pulumi-lang-dotnet="`Binpack`" pulumi-lang-go="`binpack`" pulumi-lang-python="`binpack`" pulumi-lang-yaml="`binpack`" pulumi-lang-java="`binpack`">`binpack`</span>, <span pulumi-lang-nodejs="`random`" pulumi-lang-dotnet="`Random`" pulumi-lang-go="`random`" pulumi-lang-python="`random`" pulumi-lang-yaml="`random`" pulumi-lang-java="`random`">`random`</span> and <span pulumi-lang-nodejs="`spread`" pulumi-lang-dotnet="`Spread`" pulumi-lang-go="`spread`" pulumi-lang-python="`spread`" pulumi-lang-yaml="`spread`" pulumi-lang-java="`spread`">`spread`</span>.
  final String type;

  EventTargetEcsTargetOrderedPlacementStrategy({
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

  factory EventTargetEcsTargetOrderedPlacementStrategy.fromMap(
      Map<String, dynamic> map) {
    return EventTargetEcsTargetOrderedPlacementStrategy(
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] as String,
    );
  }
}
