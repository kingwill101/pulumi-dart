import 'package:pulumi/pulumi.dart' as pulumi;

/// Server version.
enum SingleServerVersion implements pulumi.PulumiEnum<String> {
  value56("5.6"),
  value57("5.7"),
  value80("8.0");

  const SingleServerVersion(this.wireValue);
  @override
  final String wireValue;

  static SingleServerVersion fromValue(String value) {
    for (final item in SingleServerVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleServerVersion value: $value');
  }
}
