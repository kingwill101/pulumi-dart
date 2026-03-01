/// [Required] Specifies the type of service to send a callback
enum WebhookType {
  valueAzureDevOps("AzureDevOps");

  const WebhookType(this.value);
  final String value;

  static WebhookType fromValue(String value) {
    for (final item in WebhookType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookType value: $value');
  }
}

