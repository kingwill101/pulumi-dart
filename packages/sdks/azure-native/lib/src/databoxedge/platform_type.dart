import 'package:pulumi/pulumi.dart' as pulumi;

/// Host OS supported by the Kubernetes role.
enum PlatformType implements pulumi.PulumiEnum<String> {
  valueWindows("Windows"),
  valueLinux("Linux");

  const PlatformType(this.wireValue);
  @override
  final String wireValue;

  static PlatformType fromValue(String value) {
    for (final item in PlatformType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlatformType value: $value');
  }
}
