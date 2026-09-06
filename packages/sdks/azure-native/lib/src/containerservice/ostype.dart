import 'package:pulumi/pulumi.dart' as pulumi;

/// The operating system type. The default is Linux.
enum OSType implements pulumi.PulumiEnum<String> {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OSType(this.wireValue);
  @override
  final String wireValue;

  static OSType fromValue(String value) {
    for (final item in OSType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSType value: $value');
  }
}
