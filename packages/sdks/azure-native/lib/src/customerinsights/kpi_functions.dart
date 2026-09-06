import 'package:pulumi/pulumi.dart' as pulumi;

/// The computation function for the KPI.
enum KpiFunctions implements pulumi.PulumiEnum<String> {
  valueSum("Sum"),
  valueAvg("Avg"),
  valueMin("Min"),
  valueMax("Max"),
  valueLast("Last"),
  valueCount("Count"),
  valueNone("None"),
  valueCountDistinct("CountDistinct");

  const KpiFunctions(this.wireValue);
  @override
  final String wireValue;

  static KpiFunctions fromValue(String value) {
    for (final item in KpiFunctions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KpiFunctions value: $value');
  }
}
