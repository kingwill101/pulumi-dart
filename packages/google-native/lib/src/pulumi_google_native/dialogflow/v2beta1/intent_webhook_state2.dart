/// Optional. Indicates whether webhooks are enabled for the intent.
enum IntentWebhookState2 {
  webhookStateUnspecified("WEBHOOK_STATE_UNSPECIFIED"),
  webhookStateEnabled("WEBHOOK_STATE_ENABLED"),
  webhookStateEnabledForSlotFilling("WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING");

  const IntentWebhookState2(this.value);
  final String value;

  static IntentWebhookState2 fromValue(String value) {
    for (final item in IntentWebhookState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntentWebhookState2 value: $value');
  }
}
