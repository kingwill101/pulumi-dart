/// Webhook status.
enum WebhookStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const WebhookStatus(this.value);
  final String value;

  static WebhookStatus fromValue(String value) {
    for (final item in WebhookStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookStatus value: $value');
  }
}

