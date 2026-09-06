import 'package:pulumi/pulumi.dart' as pulumi;

/// The tag or digest type.
enum AkriConnectorsTagDigestType implements pulumi.PulumiEnum<String> {
  tag("Tag"),
  digest("Digest");

  const AkriConnectorsTagDigestType(this.wireValue);
  @override
  final String wireValue;

  static AkriConnectorsTagDigestType fromValue(String value) {
    for (final item in AkriConnectorsTagDigestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsTagDigestType value: $value');
  }
}
