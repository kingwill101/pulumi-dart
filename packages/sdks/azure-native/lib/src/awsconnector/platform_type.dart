import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum PlatformType implements pulumi.PulumiEnum<String> {
  linux("Linux"),
  macOS("MacOS"),
  windows("Windows");

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
