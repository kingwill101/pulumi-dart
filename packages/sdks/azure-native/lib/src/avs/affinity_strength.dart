import 'package:pulumi/pulumi.dart' as pulumi;

/// vm-host placement policy affinity strength (should/must)
enum AffinityStrength implements pulumi.PulumiEnum<String> {
  should("Should"),
  must("Must");

  const AffinityStrength(this.wireValue);
  @override
  final String wireValue;

  static AffinityStrength fromValue(String value) {
    for (final item in AffinityStrength.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AffinityStrength value: $value');
  }
}
