import 'package:pulumi/pulumi.dart' as pulumi;

/// Operating system of the cache node
enum OsType implements pulumi.PulumiEnum<String> {
  windows("Windows"),
  linux("Linux"),
  eflow("Eflow");

  const OsType(this.wireValue);
  @override
  final String wireValue;

  static OsType fromValue(String value) {
    for (final item in OsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsType value: $value');
  }
}
