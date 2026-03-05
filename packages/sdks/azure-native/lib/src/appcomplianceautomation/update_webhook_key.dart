/// whether to update webhookKey.
enum UpdateWebhookKey {
  true_("true"),
  false_("false");

  const UpdateWebhookKey(this.wireValue);
  final String wireValue;

  static UpdateWebhookKey fromValue(String value) {
    for (final item in UpdateWebhookKey.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateWebhookKey value: $value');
  }
}

