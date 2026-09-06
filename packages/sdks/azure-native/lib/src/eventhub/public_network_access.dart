import 'package:pulumi/pulumi.dart' as pulumi;

/// This determines if traffic is allowed over public network. By default it is enabled.
enum PublicNetworkAccess implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSecuredByPerimeter("SecuredByPerimeter");

  const PublicNetworkAccess(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}
