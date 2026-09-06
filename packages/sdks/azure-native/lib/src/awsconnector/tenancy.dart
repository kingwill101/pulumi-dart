import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum Tenancy implements pulumi.PulumiEnum<String> {
  dedicated("dedicated"),
  default_("default"),
  host("host");

  const Tenancy(this.wireValue);
  @override
  final String wireValue;

  static Tenancy fromValue(String value) {
    for (final item in Tenancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Tenancy value: $value');
  }
}
