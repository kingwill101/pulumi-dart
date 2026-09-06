import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum WebhookBuildType implements pulumi.PulumiEnum<String> {
  bUILD("BUILD"),
  bUILDBATCH("BUILD_BATCH");

  const WebhookBuildType(this.wireValue);
  @override
  final String wireValue;

  static WebhookBuildType fromValue(String value) {
    for (final item in WebhookBuildType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookBuildType value: $value');
  }
}
