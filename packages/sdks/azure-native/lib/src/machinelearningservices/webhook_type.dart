/// [Required] Specifies the type of service to send a callback
enum WebhookType {
  valueAzureDevOps("AzureDevOps");

  const WebhookType(this.wireValue);
  final String wireValue;

  static WebhookType fromValue(String value) {
    for (final item in WebhookType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookType value: $value');
  }
}

