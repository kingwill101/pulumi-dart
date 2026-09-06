import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the customer's intent for configuring SDN integration
enum SdnIntegrationIntent implements pulumi.PulumiEnum<String> {
  enable("Enable"),
  disable("Disable");

  const SdnIntegrationIntent(this.wireValue);
  @override
  final String wireValue;

  static SdnIntegrationIntent fromValue(String value) {
    for (final item in SdnIntegrationIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SdnIntegrationIntent value: $value');
  }
}
