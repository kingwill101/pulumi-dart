import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of service to send a callback
enum WebhookType implements pulumi.PulumiEnum<String> {
  azureDevOps("AzureDevOps");

  const WebhookType(this.wireValue);
  @override
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
