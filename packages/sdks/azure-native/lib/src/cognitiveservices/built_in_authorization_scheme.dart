import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization scheme type.
enum BuiltInAuthorizationScheme implements pulumi.PulumiEnum<String> {
  default_("Default"),
  organizationScope("OrganizationScope"),
  channels("Channels"),
  custom("Custom");

  const BuiltInAuthorizationScheme(this.wireValue);
  @override
  final String wireValue;

  static BuiltInAuthorizationScheme fromValue(String value) {
    for (final item in BuiltInAuthorizationScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuiltInAuthorizationScheme value: $value');
  }
}
