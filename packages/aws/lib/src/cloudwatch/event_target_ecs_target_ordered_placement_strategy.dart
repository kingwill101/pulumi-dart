// ignore_for_file: unused_element, unnecessary_cast


class EventTargetEcsTargetOrderedPlacementStrategy {
  /// The field to apply the placement strategy against. For the `spread` placement strategy, valid values are `instanceId` (or `host`, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as `attribute:ecs.availability-zone`. For the `binpack` placement strategy, valid values are `cpu` and `memory`. For the `random` placement strategy, this field is not used. For more information, see [Amazon ECS task placement strategies](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html).
  final String? field;
  /// Type of placement strategy. The only valid values at this time are `binpack`, `random` and `spread`.
  final String type;

  /// Creates a new [EventTargetEcsTargetOrderedPlacementStrategy].
  /// [field] The field to apply the placement strategy against. For the `spread` placement strategy, valid values are `instanceId` (or `host`, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as `attribute:ecs.availability-zone`. For the `binpack` placement strategy, valid values are `cpu` and `memory`. For the `random` placement strategy, this field is not used. For more information, see [Amazon ECS task placement strategies](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html).
  /// [type] Type of placement strategy. The only valid values at this time are `binpack`, `random` and `spread`.
  EventTargetEcsTargetOrderedPlacementStrategy({
    this.field,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'type': type,
    };
  }

  factory EventTargetEcsTargetOrderedPlacementStrategy.fromMap(Map<String, dynamic> map) {
    return EventTargetEcsTargetOrderedPlacementStrategy(
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] as String,
    );
  }
}

