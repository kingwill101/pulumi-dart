/// The type of placement strategy. The ``random`` placement strategy randomly places tasks on available candidates. The ``spread`` placement strategy spreads placement across available candidates evenly based on the ``field`` parameter. The ``binpack`` strategy places tasks on available candidates that have the least available amount of the resource that's specified with the ``field`` parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory but still enough to run the task.
enum PlacementStrategyType {
  binpack("binpack"),
  random("random"),
  spread("spread");

  const PlacementStrategyType(this.value);
  final String value;

  static PlacementStrategyType fromValue(String value) {
    for (final item in PlacementStrategyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementStrategyType value: $value');
  }
}

