import 'package:pulumi/pulumi.dart' as pulumi;

/// operating system of target machines
enum OperatingSystemType implements pulumi.PulumiEnum<String> {
  windows("Windows"),
  linux("Linux");

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
