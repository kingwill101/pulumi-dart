import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of encapsulation.
enum Encapsulation implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueGRE("GRE");

  const Encapsulation(this.wireValue);
  @override
  final String wireValue;

  static Encapsulation fromValue(String value) {
    for (final item in Encapsulation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Encapsulation value: $value');
  }
}
