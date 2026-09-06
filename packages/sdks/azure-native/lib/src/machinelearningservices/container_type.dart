import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of container to retrieve logs from.
enum ContainerType implements pulumi.PulumiEnum<String> {
  storageInitializer("StorageInitializer"),
  inferenceServer("InferenceServer");

  const ContainerType(this.wireValue);
  @override
  final String wireValue;

  static ContainerType fromValue(String value) {
    for (final item in ContainerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerType value: $value');
  }
}
