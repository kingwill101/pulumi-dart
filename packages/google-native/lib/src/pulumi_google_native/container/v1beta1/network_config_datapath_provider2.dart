/// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
enum NetworkConfigDatapathProvider2 {
  datapathProviderUnspecified("DATAPATH_PROVIDER_UNSPECIFIED"),
  legacyDatapath("LEGACY_DATAPATH"),
  advancedDatapath("ADVANCED_DATAPATH");

  const NetworkConfigDatapathProvider2(this.value);
  final String value;

  static NetworkConfigDatapathProvider2 fromValue(String value) {
    for (final item in NetworkConfigDatapathProvider2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigDatapathProvider2 value: $value');
  }
}
