enum WebhookFormat {
  valueRaw("raw"),
  valueSlack("slack"),
  pulumiDeployments("pulumi_deployments"),
  microsoftTeams("ms_teams");

  const WebhookFormat(this.value);
  final String value;

  static WebhookFormat fromValue(String value) {
    for (final item in WebhookFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookFormat value: $value');
  }
}

