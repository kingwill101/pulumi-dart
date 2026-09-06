import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute OS Type
enum OsType implements pulumi.PulumiEnum<String> {
  linux("Linux"),
  windows("Windows");

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
