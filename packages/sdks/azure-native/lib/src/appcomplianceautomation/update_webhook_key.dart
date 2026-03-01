/// whether to update webhookKey.
enum UpdateWebhookKey {
  true_("true"),
  false_("false");

  const UpdateWebhookKey(this.value);
  final String value;

  static UpdateWebhookKey fromValue(String value) {
    for (final item in UpdateWebhookKey.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateWebhookKey value: $value');
  }
}

