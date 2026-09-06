import 'package:pulumi/pulumi.dart' as pulumi;

/// Public Network Access Control for PrivateAccess resource.
enum PublicNetworkAccessOption implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessOption(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccessOption fromValue(String value) {
    for (final item in PublicNetworkAccessOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessOption value: $value');
  }
}
