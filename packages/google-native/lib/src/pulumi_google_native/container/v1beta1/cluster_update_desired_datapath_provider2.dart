/// The desired datapath provider for the cluster.
enum ClusterUpdateDesiredDatapathProvider2 {
  datapathProviderUnspecified("DATAPATH_PROVIDER_UNSPECIFIED"),
  legacyDatapath("LEGACY_DATAPATH"),
  advancedDatapath("ADVANCED_DATAPATH");

  const ClusterUpdateDesiredDatapathProvider2(this.value);
  final String value;

  static ClusterUpdateDesiredDatapathProvider2 fromValue(String value) {
    for (final item in ClusterUpdateDesiredDatapathProvider2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ClusterUpdateDesiredDatapathProvider2 value: $value');
  }
}
