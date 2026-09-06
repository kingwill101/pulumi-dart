import 'package:pulumi/pulumi.dart' as pulumi;

/// Server version.
enum ServerVersion implements pulumi.PulumiEnum<String> {
  value57("5.7"),
  value8021("8.0.21");

  const ServerVersion(this.wireValue);
  @override
  final String wireValue;

  static ServerVersion fromValue(String value) {
    for (final item in ServerVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerVersion value: $value');
  }
}
