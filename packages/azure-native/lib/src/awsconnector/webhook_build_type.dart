/// Property value
enum WebhookBuildType {
  bUILD("BUILD"),
  bUILDBATCH("BUILD_BATCH");

  const WebhookBuildType(this.value);
  final String value;

  static WebhookBuildType fromValue(String value) {
    for (final item in WebhookBuildType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookBuildType value: $value');
  }
}

