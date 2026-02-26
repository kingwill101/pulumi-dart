/// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
enum NetworkConfigDatapathProvider {
  datapathProviderUnspecified("DATAPATH_PROVIDER_UNSPECIFIED"),
  legacyDatapath("LEGACY_DATAPATH"),
  advancedDatapath("ADVANCED_DATAPATH");

  const NetworkConfigDatapathProvider(this.value);
  final String value;

  static NetworkConfigDatapathProvider fromValue(String value) {
    for (final item in NetworkConfigDatapathProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigDatapathProvider value: $value');
  }
}
