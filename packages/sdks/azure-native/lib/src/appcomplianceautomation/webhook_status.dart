/// Webhook status.
enum WebhookStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const WebhookStatus(this.wireValue);
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
