import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled.
enum ExternalAccess implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ExternalAccess(this.wireValue);
  @override
  final String wireValue;

  static ExternalAccess fromValue(String value) {
    for (final item in ExternalAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalAccess value: $value');
  }
}
