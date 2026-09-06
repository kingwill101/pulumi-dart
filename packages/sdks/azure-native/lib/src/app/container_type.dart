import 'package:pulumi/pulumi.dart' as pulumi;

/// The container type of the sessions.
enum ContainerType implements pulumi.PulumiEnum<String> {
  valueCustomContainer("CustomContainer"),
  valuePythonLTS("PythonLTS");

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
