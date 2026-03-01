enum WebhookGroup {
  stacks("stacks"),
  deployments("deployments"),
  environments("environments");

  const WebhookGroup(this.value);
  final String value;

  static WebhookGroup fromValue(String value) {
    for (final item in WebhookGroup.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookGroup value: $value');
  }
}

