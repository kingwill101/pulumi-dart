import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of this DNS zone (Public or Private).
enum ZoneType implements pulumi.PulumiEnum<String> {
  valuePublic("Public"),
  valuePrivate("Private");

  const ZoneType(this.wireValue);
  @override
  final String wireValue;

  static ZoneType fromValue(String value) {
    for (final item in ZoneType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneType value: $value');
  }
}
