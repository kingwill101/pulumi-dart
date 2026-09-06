import 'package:pulumi/pulumi.dart' as pulumi;

/// The network access type for accessing Application Insights query.
enum PublicNetworkAccessType implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const PublicNetworkAccessType(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccessType fromValue(String value) {
    for (final item in PublicNetworkAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessType value: $value');
  }
}
