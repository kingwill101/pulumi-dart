/// The status of the webhook at the time the operation was called.
enum WebhookStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

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
