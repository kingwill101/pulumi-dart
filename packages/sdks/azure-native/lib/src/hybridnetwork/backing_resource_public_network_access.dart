import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact store backing resource network access type
enum BackingResourcePublicNetworkAccess implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const BackingResourcePublicNetworkAccess(this.wireValue);
  @override
  final String wireValue;

  static BackingResourcePublicNetworkAccess fromValue(String value) {
    for (final item in BackingResourcePublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackingResourcePublicNetworkAccess value: $value');
  }
}
