import 'package:pulumi/pulumi.dart' as pulumi;

/// whether this route will be linked to the default endpoint domain.
enum LinkToDefaultDomain implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const LinkToDefaultDomain(this.wireValue);
  @override
  final String wireValue;

  static LinkToDefaultDomain fromValue(String value) {
    for (final item in LinkToDefaultDomain.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkToDefaultDomain value: $value');
  }
}
