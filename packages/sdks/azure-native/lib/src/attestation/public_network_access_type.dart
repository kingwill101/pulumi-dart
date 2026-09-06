import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls whether traffic from the public network is allowed to access the Attestation Provider APIs.
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
