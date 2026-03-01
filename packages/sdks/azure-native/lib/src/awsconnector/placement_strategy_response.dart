// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PlacementStrategy
class PlacementStrategyResponse {
  /// The field to apply the placement strategy against. For the ``spread`` placement strategy, valid values are ``instanceId`` (or ``host``, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as ``attribute:ecs.availability-zone``. For the ``binpack`` placement strategy, valid values are ``CPU`` and ``MEMORY``. For the ``random`` placement strategy, this field is not used.
  final String? field;
  /// The type of placement strategy. The ``random`` placement strategy randomly places tasks on available candidates. The ``spread`` placement strategy spreads placement across available candidates evenly based on the ``field`` parameter. The ``binpack`` strategy places tasks on available candidates that have the least available amount of the resource that's specified with the ``field`` parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory but still enough to run the task.
  final String? type;

  /// Creates a new [PlacementStrategyResponse].
  /// [field] The field to apply the placement strategy against. For the ``spread`` placement strategy, valid values are ``instanceId`` (or ``host``, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as ``attribute:ecs.availability-zone``. For the ``binpack`` placement strategy, valid values are ``CPU`` and ``MEMORY``. For the ``random`` placement strategy, this field is not used.
  /// [type] The type of placement strategy. The ``random`` placement strategy randomly places tasks on available candidates. The ``spread`` placement strategy spreads placement across available candidates evenly based on the ``field`` parameter. The ``binpack`` strategy places tasks on available candidates that have the least available amount of the resource that's specified with the ``field`` parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory but still enough to run the task.
  PlacementStrategyResponse({
    this.field,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'type': ?type,
    };
  }

  factory PlacementStrategyResponse.fromMap(Map<String, dynamic> map) {
    return PlacementStrategyResponse(
      field: map['field'] == null ? null : map['field'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

