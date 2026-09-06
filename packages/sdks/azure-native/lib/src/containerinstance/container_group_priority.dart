import 'package:pulumi/pulumi.dart' as pulumi;

/// The priority of the container group.
enum ContainerGroupPriority implements pulumi.PulumiEnum<String> {
  valueRegular("Regular"),
  valueSpot("Spot");

  const ContainerGroupPriority(this.wireValue);
  @override
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
