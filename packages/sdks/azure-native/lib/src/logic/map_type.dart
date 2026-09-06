import 'package:pulumi/pulumi.dart' as pulumi;

/// The map type.
enum MapType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueXslt("Xslt"),
  valueXslt20("Xslt20"),
  valueXslt30("Xslt30"),
  valueLiquid("Liquid");

  const MapType(this.wireValue);
  @override
  final String wireValue;

  static MapType fromValue(String value) {
    for (final item in MapType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MapType value: $value');
  }
}
