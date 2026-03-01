enum WebhookAction {
  valuePush("push"),
  valueDelete("delete"),
  valueQuarantine("quarantine"),
  valueChartPush("chart_push"),
  valueChartDelete("chart_delete");

  const WebhookAction(this.value);
  final String value;

  static WebhookAction fromValue(String value) {
    for (final item in WebhookAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookAction value: $value');
  }
}

