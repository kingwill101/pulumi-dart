import 'package:pulumi/pulumi.dart' as pulumi;

/// Edge Machine type.
enum EdgeMachineKind implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  dedicated("Dedicated");

  const EdgeMachineKind(this.wireValue);
  @override
  final String wireValue;

  static EdgeMachineKind fromValue(String value) {
    for (final item in EdgeMachineKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeMachineKind value: $value');
  }
}
