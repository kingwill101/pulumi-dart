import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of developer portal in this API Management service.
enum DeveloperPortalStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DeveloperPortalStatus(this.wireValue);
  @override
  final String wireValue;

  static DeveloperPortalStatus fromValue(String value) {
    for (final item in DeveloperPortalStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeveloperPortalStatus value: $value');
  }
}
