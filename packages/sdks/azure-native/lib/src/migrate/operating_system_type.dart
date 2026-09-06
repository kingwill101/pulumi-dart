import 'package:pulumi/pulumi.dart' as pulumi;

enum OperatingSystemType implements pulumi.PulumiEnum<String> {
  valueWindows("Windows"),
  valueLinux("Linux");

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
