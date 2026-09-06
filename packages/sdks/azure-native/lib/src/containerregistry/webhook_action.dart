import 'package:pulumi/pulumi.dart' as pulumi;

enum WebhookAction implements pulumi.PulumiEnum<String> {
  valuePush("push"),
  valueDelete("delete"),
  valueQuarantine("quarantine"),
  valueChartPush("chart_push"),
  valueChartDelete("chart_delete");

  const WebhookAction(this.wireValue);
  @override
  final String wireValue;

  static WebhookAction fromValue(String value) {
    for (final item in WebhookAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookAction value: $value');
  }
}
