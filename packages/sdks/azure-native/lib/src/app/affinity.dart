import 'package:pulumi/pulumi.dart' as pulumi;

/// Sticky Session Affinity
enum Affinity implements pulumi.PulumiEnum<String> {
  valueSticky("sticky"),
  valueNone("none");

  const Affinity(this.wireValue);
  @override
  final String wireValue;

  static Affinity fromValue(String value) {
    for (final item in Affinity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Affinity value: $value');
  }
}
