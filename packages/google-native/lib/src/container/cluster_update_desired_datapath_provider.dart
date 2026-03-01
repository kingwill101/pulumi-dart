/// The desired datapath provider for the cluster.
enum ClusterUpdateDesiredDatapathProvider {
  datapathProviderUnspecified("DATAPATH_PROVIDER_UNSPECIFIED"),
  legacyDatapath("LEGACY_DATAPATH"),
  advancedDatapath("ADVANCED_DATAPATH");

  const ClusterUpdateDesiredDatapathProvider(this.value);
  final String value;

  static ClusterUpdateDesiredDatapathProvider fromValue(String value) {
    for (final item in ClusterUpdateDesiredDatapathProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ClusterUpdateDesiredDatapathProvider value: $value',
    );
  }
}
