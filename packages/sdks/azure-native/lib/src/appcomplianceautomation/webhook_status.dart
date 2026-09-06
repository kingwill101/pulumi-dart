import 'package:pulumi/pulumi.dart' as pulumi;

/// Webhook status.
enum WebhookStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const WebhookStatus(this.wireValue);
  @override
  final String wireValue;

  static WebhookStatus fromValue(String value) {
    for (final item in WebhookStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookStatus value: $value');
  }
}
