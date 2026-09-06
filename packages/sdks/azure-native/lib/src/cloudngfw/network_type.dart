import 'package:pulumi/pulumi.dart' as pulumi;

/// vnet or vwan, cannot be updated
enum NetworkType implements pulumi.PulumiEnum<String> {
  valueVNET("VNET"),
  valueVWAN("VWAN");

  const NetworkType(this.wireValue);
  @override
  final String wireValue;

  static NetworkType fromValue(String value) {
    for (final item in NetworkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkType value: $value');
  }
}
