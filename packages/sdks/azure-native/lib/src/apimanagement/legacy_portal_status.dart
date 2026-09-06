import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of legacy portal in the API Management service.
enum LegacyPortalStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const LegacyPortalStatus(this.wireValue);
  @override
  final String wireValue;

  static LegacyPortalStatus fromValue(String value) {
    for (final item in LegacyPortalStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LegacyPortalStatus value: $value');
  }
}
