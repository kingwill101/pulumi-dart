import 'package:pulumi/pulumi.dart' as pulumi;

/// This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile's access rules.
enum PublicNetworkAccessFlag implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSecuredByPerimeter("SecuredByPerimeter");

  const PublicNetworkAccessFlag(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccessFlag fromValue(String value) {
    for (final item in PublicNetworkAccessFlag.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessFlag value: $value');
  }
}
