import 'package:pulumi/pulumi.dart' as pulumi;

/// The Cloud HSM Cluster public network access
enum PublicNetworkAccess implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled");

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
