import 'package:pulumi/pulumi.dart' as pulumi;

/// whether to update webhookKey.
enum UpdateWebhookKey implements pulumi.PulumiEnum<String> {
  true_("true"),
  false_("false");

  const UpdateWebhookKey(this.wireValue);
  @override
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
