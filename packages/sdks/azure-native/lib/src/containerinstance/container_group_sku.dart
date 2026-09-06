import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU for a container group.
enum ContainerGroupSku implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueDedicated("Dedicated"),
  valueConfidential("Confidential");

  const ContainerGroupSku(this.wireValue);
  @override
  final String wireValue;

  static ContainerGroupSku fromValue(String value) {
    for (final item in ContainerGroupSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupSku value: $value');
  }
}
