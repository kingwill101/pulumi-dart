/// The status of the webhook at the time the operation was called.
enum WebhookStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

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

