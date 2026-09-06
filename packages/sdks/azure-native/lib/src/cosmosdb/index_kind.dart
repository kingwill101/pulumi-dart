import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of index.
enum IndexKind implements pulumi.PulumiEnum<String> {
  valueHash("Hash"),
  valueRange("Range"),
  valueSpatial("Spatial");

  const IndexKind(this.wireValue);
  @override
  final String wireValue;

  static IndexKind fromValue(String value) {
    for (final item in IndexKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexKind value: $value');
  }
}
