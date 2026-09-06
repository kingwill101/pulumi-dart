import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of operating system.
enum OperatingSystemType implements pulumi.PulumiEnum<String> {
  linux("Linux"),
  windows("Windows");

  const OperatingSystemType(this.wireValue);
  @override
  final String wireValue;

  static OperatingSystemType fromValue(String value) {
    for (final item in OperatingSystemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemType value: $value');
  }
}
