/// The App Engine integration mode to use for this database.
enum DatabaseAppEngineIntegrationMode {
  appEngineIntegrationModeUnspecified(
      "APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const DatabaseAppEngineIntegrationMode(this.value);
  final String value;

  static DatabaseAppEngineIntegrationMode fromValue(String value) {
    for (final item in DatabaseAppEngineIntegrationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DatabaseAppEngineIntegrationMode value: $value');
  }
}
