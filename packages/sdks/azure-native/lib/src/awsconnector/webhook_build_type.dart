/// Property value
enum WebhookBuildType {
  bUILD("BUILD"),
  bUILDBATCH("BUILD_BATCH");

  const WebhookBuildType(this.wireValue);
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
