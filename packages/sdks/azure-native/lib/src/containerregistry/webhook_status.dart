import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the webhook at the time the operation was called.
enum WebhookStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

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
