import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
enum PublicNetworkAccessType implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

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
