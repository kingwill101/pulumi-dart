import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
enum PublicNetworkAccessEnum implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccessEnum(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccessEnum fromValue(String value) {
    for (final item in PublicNetworkAccessEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessEnum value: $value');
  }
}
