import 'package:pulumi/pulumi.dart' as pulumi;

/// The hypervisor generation of the Virtual Machine [V1, V2]
enum HyperVGeneration implements pulumi.PulumiEnum<String> {
  v1("V1"),
  v2("V2");

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
