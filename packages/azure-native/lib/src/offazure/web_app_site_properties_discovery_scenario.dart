/// Gets or sets the discovery scenario.
enum WebAppSitePropertiesDiscoveryScenario {
  migrate("Migrate"),
  dR("DR");

  const WebAppSitePropertiesDiscoveryScenario(this.value);
  final String value;

  static WebAppSitePropertiesDiscoveryScenario fromValue(String value) {
    for (final item in WebAppSitePropertiesDiscoveryScenario.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebAppSitePropertiesDiscoveryScenario value: $value');
  }
}

