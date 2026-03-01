/// The strategy of the placement group determines how the instances are organized within the group.
/// See https://docs.aws.amazon.com/cli/latest/reference/ec2/create-placement-group.html
enum PlacementStrategy {
  spread("spread"),
  cluster("cluster");

  const PlacementStrategy(this.value);
  final String value;

  static PlacementStrategy fromValue(String value) {
    for (final item in PlacementStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementStrategy value: $value');
  }
}

