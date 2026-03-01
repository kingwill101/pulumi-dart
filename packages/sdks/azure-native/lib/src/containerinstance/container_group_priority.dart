/// The priority of the container group.
enum ContainerGroupPriority {
  valueRegular("Regular"),
  valueSpot("Spot");

  const ContainerGroupPriority(this.value);
  final String value;

  static ContainerGroupPriority fromValue(String value) {
    for (final item in ContainerGroupPriority.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupPriority value: $value');
  }
}

