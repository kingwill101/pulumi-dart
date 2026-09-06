import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to determine whether PublicNetworkAccess is Enabled or Disabled for egress of a deployment.
enum EgressPublicNetworkAccessType implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const EgressPublicNetworkAccessType(this.wireValue);
  @override
  final String wireValue;

  static EgressPublicNetworkAccessType fromValue(String value) {
    for (final item in EgressPublicNetworkAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EgressPublicNetworkAccessType value: $value');
  }
}
