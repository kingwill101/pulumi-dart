import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperVGenerations supported by Azure VMs.
enum HyperVGeneration implements pulumi.PulumiEnum<String> {
  gen1("Gen1"),
  gen2("Gen2");

  const HyperVGeneration(this.wireValue);
  @override
  final String wireValue;

  static HyperVGeneration fromValue(String value) {
    for (final item in HyperVGeneration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HyperVGeneration value: $value');
  }
}
