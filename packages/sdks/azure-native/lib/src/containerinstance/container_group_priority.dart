/// The priority of the container group.
enum ContainerGroupPriority {
  valueRegular("Regular"),
  valueSpot("Spot");

  const ContainerGroupPriority(this.wireValue);
  final String wireValue;

  static ContainerGroupPriority fromValue(String value) {
    for (final item in ContainerGroupPriority.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupPriority value: $value');
  }
}
